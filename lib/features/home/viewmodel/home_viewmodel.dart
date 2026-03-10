import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../model/category.dart';
import '../model/order.dart';
import '../model/product.dart';
import '../model/cart_item.dart';
import '../model/table.dart';
import '../repository/category_repository.dart';
import '../repository/order_repository.dart';
import '../repository/product_repository.dart';
import 'store_viewmodel.dart';

part 'home_viewmodel.g.dart';

// ---------------------------------------------------------------------------
// Categories
// ---------------------------------------------------------------------------

@riverpod
class CategoryList extends _$CategoryList {
  @override
  Future<List<Category>> build() async {
    final store = ref.watch(selectedStoreProvider);
    if (store == null) return [];
    final repo = ref.read(categoryRepositoryProvider);
    final result = await repo.getCategories(storeId: store.id);
    return result.fold(
      (failure) => throw Exception(failure.message),
      (categories) => categories,
    );
  }
}

@riverpod
class SelectedCategoryId extends _$SelectedCategoryId {
  @override
  String? build() => null; // null means "All"

  void select(String? id) => state = id;
}

// ---------------------------------------------------------------------------
// Products (filtered by selected category)
// ---------------------------------------------------------------------------

@riverpod
class ProductList extends _$ProductList {
  @override
  Future<List<Product>> build() async {
    final store = ref.watch(selectedStoreProvider);
    if (store == null) return [];
    final categoryId = ref.watch(selectedCategoryIdProvider);
    final repo = ref.read(productRepositoryProvider);
    final result = await repo.getProducts(
      storeId: store.id,
      categoryId: categoryId,
    );
    return result.fold(
      (failure) => throw Exception(failure.message),
      (products) => products,
    );
  }
}

// ---------------------------------------------------------------------------
// Active orders (OPEN status only for live orders panel)
// ---------------------------------------------------------------------------

@riverpod
class ActiveOrders extends _$ActiveOrders {
  @override
  Future<List<Order>> build() async {
    final store = ref.watch(selectedStoreProvider);
    if (store == null) return [];
    final repo = ref.read(orderRepositoryProvider);
    final result = await repo.getOrders(storeId: store.id);
    return result.fold(
      (failure) => throw Exception(failure.message),
      (orders) => orders,
    );
  }

  Future<void> refresh() async {
    ref.invalidateSelf();
  }
}

// ---------------------------------------------------------------------------
// Current order ID – tracks a saved order being edited
// ---------------------------------------------------------------------------

@riverpod
class CurrentOrderId extends _$CurrentOrderId {
  @override
  String? build() => null;

  void set(String? id) => state = id;
}

/// Holds the full current Order object after save / load.
@riverpod
class CurrentOrder extends _$CurrentOrder {
  @override
  Order? build() => null;

  void set(Order? order) => state = order;
}

// ---------------------------------------------------------------------------
// Cart state (local, not persisted until order creation)
// ---------------------------------------------------------------------------

@riverpod
class Cart extends _$Cart {
  @override
  List<CartItem> build() => [];

  void addItem(Product product) {
    final index = state.indexWhere((e) => e.product.id == product.id);
    if (index >= 0) {
      final existing = state[index];
      state = [
        ...state.sublist(0, index),
        existing.copyWith(quantity: existing.quantity + 1),
        ...state.sublist(index + 1),
      ];
    } else {
      state = [...state, CartItem(product: product)];
    }
  }

  void removeItem(String productId) {
    state = state.where((e) => e.product.id != productId).toList();
  }

  void updateQuantity(String productId, int quantity) {
    if (quantity <= 0) {
      removeItem(productId);
      return;
    }
    final index = state.indexWhere((e) => e.product.id == productId);
    if (index >= 0) {
      final existing = state[index];
      state = [
        ...state.sublist(0, index),
        existing.copyWith(quantity: quantity),
        ...state.sublist(index + 1),
      ];
    }
  }

  void clear() => state = [];

  /// Replace the entire cart (e.g. when loading an existing order).
  void replaceAll(List<CartItem> items) => state = items;

  double get subtotal =>
      state.fold(0, (sum, item) => sum + item.product.price * item.quantity);

  double get taxAmount => state.fold(
    0,
    (sum, item) =>
        sum +
        (item.product.price * item.quantity * item.product.taxPercent / 100),
  );
}

// ---------------------------------------------------------------------------
// Order type selection
// ---------------------------------------------------------------------------

@riverpod
class SelectedOrderType extends _$SelectedOrderType {
  @override
  String build() => 'dine_in';

  void select(String type) => state = type;
}

// ---------------------------------------------------------------------------
// Selected table (for dine-in)
// ---------------------------------------------------------------------------

@riverpod
class SelectedTable extends _$SelectedTable {
  @override
  DineInTable? build() => null;

  void select(DineInTable? table) => state = table;
}

// ---------------------------------------------------------------------------
// Payment method
// ---------------------------------------------------------------------------

@riverpod
class SelectedPaymentMethod extends _$SelectedPaymentMethod {
  @override
  String build() => 'cash';

  void select(String method) => state = method;
}

// ---------------------------------------------------------------------------
// Order operations viewmodel – save, send to kitchen, complete
// ---------------------------------------------------------------------------

@riverpod
class OrderOperations extends _$OrderOperations {
  @override
  AsyncValue<void> build() => const AsyncData(null);

  /// Create (save) a new order on the backend and store it locally.
  Future<bool> saveOrder() async {
    final store = ref.read(selectedStoreProvider);
    if (store == null) {
      state = AsyncError('No store selected', StackTrace.current);
      return false;
    }

    final cartItems = ref.read(cartProvider);
    if (cartItems.isEmpty) {
      state = AsyncError('Cart is empty', StackTrace.current);
      return false;
    }

    state = const AsyncLoading();

    final orderType = ref.read(selectedOrderTypeProvider);
    final table = ref.read(selectedTableProvider);

    final orderCreate = OrderCreate(
      storeId: store.id,
      orderType: orderType,
      tableId: orderType == 'dine_in' ? table?.id : null,
      items: cartItems
          .map(
            (e) => OrderItemCreate(
              productId: e.product.id,
              quantity: e.quantity,
              price: e.product.price,
              notes: e.notes,
            ),
          )
          .toList(),
    );

    final repo = ref.read(orderRepositoryProvider);
    final result = await repo.createOrder(orderCreate);

    return result.fold(
      (failure) {
        state = AsyncError(failure.message, StackTrace.current);
        return false;
      },
      (order) {
        ref.read(currentOrderIdProvider.notifier).set(order.id);
        ref.read(currentOrderProvider.notifier).set(order);
        ref.invalidate(activeOrdersProvider);
        state = const AsyncData(null);
        return true;
      },
    );
  }

  /// Send the current order to kitchen (generate KOT).
  Future<bool> sendToKitchen() async {
    final orderId = ref.read(currentOrderIdProvider);
    if (orderId == null) {
      state = AsyncError('No order to send', StackTrace.current);
      return false;
    }

    state = const AsyncLoading();

    final repo = ref.read(orderRepositoryProvider);
    final result = await repo.sendToKitchen(orderId);

    return result.fold(
      (failure) {
        state = AsyncError(failure.message, StackTrace.current);
        return false;
      },
      (_) {
        ref.invalidate(activeOrdersProvider);
        state = const AsyncData(null);
        return true;
      },
    );
  }

  /// Complete payment (dummy billing) – marks order as COMPLETED.
  Future<bool> completePayment() async {
    final orderId = ref.read(currentOrderIdProvider);
    if (orderId == null) {
      state = AsyncError('No order to complete', StackTrace.current);
      return false;
    }

    state = const AsyncLoading();

    final paymentMethod = ref.read(selectedPaymentMethodProvider);
    final currentOrder = ref.read(currentOrderProvider);
    final grandTotal = currentOrder?.grandTotal ?? 0;

    final repo = ref.read(orderRepositoryProvider);

    // 1. Create payment
    final payResult = await repo.createPayment(
      PaymentCreate(
        orderId: orderId,
        paymentMethod: paymentMethod,
        amount: grandTotal,
      ),
    );

    if (payResult.isLeft()) {
      final failure = payResult.getLeft().toNullable();
      state = AsyncError(
        failure?.message ?? 'Payment failed',
        StackTrace.current,
      );
      return false;
    }

    // 2. Update status to COMPLETED
    final statusResult = await repo.updateOrderStatus(
      orderId: orderId,
      status: 'completed',
    );

    return statusResult.fold(
      (failure) {
        state = AsyncError(failure.message, StackTrace.current);
        return false;
      },
      (_) {
        // Clear local state
        ref.read(cartProvider.notifier).clear();
        ref.read(currentOrderIdProvider.notifier).set(null);
        ref.read(currentOrderProvider.notifier).set(null);
        ref.invalidate(activeOrdersProvider);
        state = const AsyncData(null);
        return true;
      },
    );
  }

  /// Load an existing order into the cart for editing.
  Future<bool> loadOrder(Order order) async {
    state = const AsyncLoading();

    ref.read(currentOrderIdProvider.notifier).set(order.id);
    ref.read(currentOrderProvider.notifier).set(order);
    ref.read(selectedOrderTypeProvider.notifier).select(order.orderType);

    // Convert order items to cart items (use a placeholder Product).
    final cartItems = order.items.map((item) {
      final product = Product(
        id: item.productId,
        storeId: order.storeId,
        categoryId: '',
        name: item.productName,
        price: item.price,
      );
      return CartItem(
        product: product,
        quantity: item.quantity,
        notes: item.notes,
      );
    }).toList();

    ref.read(cartProvider.notifier).replaceAll(cartItems);
    state = const AsyncData(null);
    return true;
  }

  /// Clear current order and reset cart.
  void newOrder() {
    ref.read(currentOrderIdProvider.notifier).set(null);
    ref.read(currentOrderProvider.notifier).set(null);
    ref.read(cartProvider.notifier).clear();
  }

  /// Legacy: place order + pay in one step (kept for backwards compat).
  Future<bool> placeOrder() async {
    final saved = await saveOrder();
    if (!saved) return false;
    return completePayment();
  }
}
