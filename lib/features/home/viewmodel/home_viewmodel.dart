import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../model/category.dart';
import '../model/order.dart';
import '../model/product.dart';
import '../model/cart_item.dart';
import '../model/table.dart';
import '../repository/category_repository.dart';
import '../repository/order_repository.dart';
import '../repository/product_repository.dart';
import '../repository/store_repository.dart';
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

/// All products for the current store (no category filter) — used for name lookups.
@riverpod
class AllProducts extends _$AllProducts {
  @override
  Future<List<Product>> build() async {
    final store = ref.watch(selectedStoreProvider);
    if (store == null) return [];
    final repo = ref.read(productRepositoryProvider);
    final result = await repo.getProducts(storeId: store.id);
    return result.fold(
      (failure) => throw Exception(failure.message),
      (products) => products,
    );
  }
}

/// Maps product ID → Product for fast lookups.
@riverpod
Future<Map<String, Product>> productMap(Ref ref) async {
  final products = await ref.watch(allProductsProvider.future);
  return {for (final p in products) p.id: p};
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
// Store tables (fetched from API)
// ---------------------------------------------------------------------------

@riverpod
class StoreTables extends _$StoreTables {
  @override
  Future<List<DineInTable>> build() async {
    final store = ref.watch(selectedStoreProvider);
    if (store == null) return [];
    final repo = ref.read(storeRepositoryProvider);
    final result = await repo.getStoreTables(storeId: store.id);
    return result.fold(
      (failure) => throw Exception(failure.message),
      (tables) => tables,
    );
  }
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
      tableNumber: orderType == 'dine_in' ? table?.tableNumber : null,
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

    // 1. Generate KOT
    final result = await repo.sendToKitchen(orderId);

    return result.fold(
      (failure) {
        state = AsyncError(failure.message, StackTrace.current);
        return false;
      },
      (_) {
        // Refresh orders and re-fetch current order
        ref.invalidate(activeOrdersProvider);
        _refreshCurrentOrder(orderId);
        state = const AsyncData(null);
        return true;
      },
    );
  }

  Future<void> _refreshCurrentOrder(String orderId) async {
    final repo = ref.read(orderRepositoryProvider);
    final result = await repo.getOrderById(orderId);
    result.fold(
      (_) {},
      (order) => ref.read(currentOrderProvider.notifier).set(order),
    );
  }

  /// Complete payment – records payment and marks order as paid/completed.
  Future<bool> completePayment() async {
    final orderId = ref.read(currentOrderIdProvider);
    if (orderId == null) {
      state = AsyncError('No order to complete', StackTrace.current);
      return false;
    }

    state = const AsyncLoading();

    final paymentMethod = ref.read(selectedPaymentMethodProvider);
    final currentOrder = ref.read(currentOrderProvider);

    if (currentOrder == null) {
      state = AsyncError('No active order found', StackTrace.current);
      return false;
    }
    if (currentOrder.status == 'cancelled') {
      state = AsyncError(
        'Cannot take payment for a cancelled order',
        StackTrace.current,
      );
      return false;
    }

    // Use grandTotal from the order (mapped from net_amount), or compute from cart
    double amount = currentOrder.grandTotal;
    if (amount == 0) {
      final cartItems = ref.read(cartProvider);
      amount = cartItems.fold<double>(
        0,
        (s, e) => s + e.product.price * e.quantity,
      );
      amount += cartItems.fold<double>(
        0,
        (s, e) =>
            s + (e.product.price * e.quantity * e.product.taxPercent / 100),
      );
    }

    final repo = ref.read(orderRepositoryProvider);

    // Record payment – the backend auto-updates payment_status when fully paid.
    final payResult = await repo.createPayment(
      PaymentCreate(
        orderId: orderId,
        paymentMethod: paymentMethod,
        amount: amount,
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

    // Refresh from backend and keep order active unless it is fully closed.
    final refreshed = await repo.getOrderById(orderId);
    refreshed.fold((_) {}, (order) {
      ref.read(currentOrderProvider.notifier).set(order);
      // Only reset local context when order is fully settled/closed.
      if (order.status == 'paid' || order.status == 'cancelled') {
        ref.read(cartProvider.notifier).clear();
        ref.read(currentOrderIdProvider.notifier).set(null);
        ref.read(currentOrderProvider.notifier).set(null);
      }
    });

    ref.invalidate(activeOrdersProvider);
    state = const AsyncData(null);
    return true;
  }

  Future<bool> editLatestPayment({
    required double amount,
    required String paymentMethod,
  }) async {
    final orderId = ref.read(currentOrderIdProvider);
    if (orderId == null) {
      state = AsyncError('No active order found', StackTrace.current);
      return false;
    }
    if (amount <= 0) {
      state = AsyncError(
        'Amount must be greater than zero',
        StackTrace.current,
      );
      return false;
    }

    state = const AsyncLoading();
    final repo = ref.read(orderRepositoryProvider);

    final paymentsResult = await repo.getOrderPayments(orderId);
    if (paymentsResult.isLeft()) {
      final failure = paymentsResult.getLeft().toNullable();
      state = AsyncError(
        failure?.message ?? 'Failed to fetch payments',
        StackTrace.current,
      );
      return false;
    }

    final payments = paymentsResult.getRight().toNullable() ?? const [];
    final editable = payments.firstWhere(
      (p) => (p['is_refund'] as bool? ?? false) == false,
      orElse: () => const <String, dynamic>{},
    );
    final paymentId = editable['id'] as String?;
    if (paymentId == null || paymentId.isEmpty) {
      state = AsyncError('No editable payment found', StackTrace.current);
      return false;
    }

    final updateResult = await repo.updatePayment(
      paymentId: paymentId,
      amount: amount,
      paymentMethod: paymentMethod,
    );
    if (updateResult.isLeft()) {
      final failure = updateResult.getLeft().toNullable();
      state = AsyncError(
        failure?.message ?? 'Failed to update payment',
        StackTrace.current,
      );
      return false;
    }

    await _refreshCurrentOrder(orderId);
    ref.invalidate(activeOrdersProvider);
    state = const AsyncData(null);
    return true;
  }

  /// Load an existing order into the cart for editing.
  Future<bool> loadOrder(Order order) async {
    state = const AsyncLoading();

    ref.read(currentOrderIdProvider.notifier).set(order.id);
    ref.read(currentOrderProvider.notifier).set(order);
    ref.read(selectedOrderTypeProvider.notifier).select(order.orderType);

    // Try to resolve product names from the all-products cache.
    Map<String, Product> productMap = {};
    try {
      productMap = await ref.read(productMapProvider.future);
    } catch (_) {}

    // Convert order items to cart items.
    final cartItems = order.items.map((item) {
      final cached = productMap[item.productId];
      final product =
          cached ??
          Product(
            id: item.productId,
            storeId: order.storeId,
            categoryId: null,
            name: item.productName.isNotEmpty ? item.productName : 'Product',
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
    return saveOrder();
  }
}
