import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../home/model/order.dart';
import '../../home/repository/order_repository.dart';
import '../../home/viewmodel/home_viewmodel.dart';
import '../../home/viewmodel/store_viewmodel.dart';

part 'orders_viewmodel.g.dart';

// ---------------------------------------------------------------------------
// Order type filter (tab selection)
// ---------------------------------------------------------------------------

@riverpod
class OrderTypeFilter extends _$OrderTypeFilter {
  @override
  String? build() => null; // null = All Orders

  void select(String? type) => state = type;
}

// ---------------------------------------------------------------------------
// Filtered orders list
// ---------------------------------------------------------------------------

@riverpod
class OrdersList extends _$OrdersList {
  @override
  Future<List<Order>> build() async {
    final store = ref.watch(selectedStoreProvider);
    if (store == null) return [];
    final orderType = ref.watch(orderTypeFilterProvider);
    final repo = ref.read(orderRepositoryProvider);
    final result = await repo.getOrders(
      storeId: store.id,
      orderType: orderType,
    );
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
// Selected order for details
// ---------------------------------------------------------------------------

@riverpod
class SelectedOrderId extends _$SelectedOrderId {
  @override
  String? build() => null;

  void select(String? id) => state = id;
}

// ---------------------------------------------------------------------------
// Single order detail
// ---------------------------------------------------------------------------

@riverpod
class OrderDetail extends _$OrderDetail {
  @override
  Future<Order?> build() async {
    final orderId = ref.watch(selectedOrderIdProvider);
    if (orderId == null) return null;
    final repo = ref.read(orderRepositoryProvider);
    final result = await repo.getOrderById(orderId);
    return result.fold(
      (failure) => throw Exception(failure.message),
      (order) => order,
    );
  }
}

// ---------------------------------------------------------------------------
// Order operations (status update, cancel, payment)
// ---------------------------------------------------------------------------

@riverpod
class OrdersPageOperations extends _$OrdersPageOperations {
  @override
  AsyncValue<void> build() => const AsyncData(null);

  Future<bool> updateStatus(String orderId, String status) async {
    state = const AsyncLoading();
    final repo = ref.read(orderRepositoryProvider);
    final result = await repo.updateOrderStatus(
      orderId: orderId,
      status: status,
    );
    return result.fold(
      (failure) {
        state = AsyncError(failure.message, StackTrace.current);
        return false;
      },
      (_) {
        ref.invalidate(ordersListProvider);
        ref.invalidate(activeOrdersProvider);
        ref.invalidate(orderDetailProvider);
        state = const AsyncData(null);
        return true;
      },
    );
  }

  Future<bool> cancelOrder(String orderId, String reason) async {
    state = const AsyncLoading();
    final repo = ref.read(orderRepositoryProvider);
    final result = await repo.cancelOrder(orderId: orderId, reason: reason);
    return result.fold(
      (failure) {
        state = AsyncError(failure.message, StackTrace.current);
        return false;
      },
      (_) {
        ref.invalidate(ordersListProvider);
        ref.invalidate(activeOrdersProvider);
        ref.invalidate(orderDetailProvider);
        state = const AsyncData(null);
        return true;
      },
    );
  }

  Future<bool> processPayment({
    required String orderId,
    required String paymentMethod,
    required double amount,
  }) async {
    state = const AsyncLoading();
    final repo = ref.read(orderRepositoryProvider);
    final result = await repo.createPayment(
      PaymentCreate(
        orderId: orderId,
        paymentMethod: paymentMethod,
        amount: amount,
      ),
    );
    return result.fold(
      (failure) {
        state = AsyncError(failure.message, StackTrace.current);
        return false;
      },
      (_) {
        ref.invalidate(ordersListProvider);
        ref.invalidate(activeOrdersProvider);
        ref.invalidate(orderDetailProvider);
        state = const AsyncData(null);
        return true;
      },
    );
  }
}

// ---------------------------------------------------------------------------
// New order creation cart (separate from POS homepage cart)
// ---------------------------------------------------------------------------

@riverpod
class NewOrderCart extends _$NewOrderCart {
  @override
  List<OrderItemCreate> build() => [];

  void addItem(OrderItemCreate item) {
    final index = state.indexWhere((e) => e.productId == item.productId);
    if (index >= 0) {
      final existing = state[index];
      state = [
        ...state.sublist(0, index),
        existing.copyWith(quantity: existing.quantity + 1),
        ...state.sublist(index + 1),
      ];
    } else {
      state = [...state, item];
    }
  }

  void removeItem(String productId) {
    state = state.where((e) => e.productId != productId).toList();
  }

  void updateQuantity(String productId, int quantity) {
    if (quantity <= 0) {
      removeItem(productId);
      return;
    }
    final index = state.indexWhere((e) => e.productId == productId);
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
}

// ---------------------------------------------------------------------------
// New order type selection
// ---------------------------------------------------------------------------

@riverpod
class NewOrderType extends _$NewOrderType {
  @override
  String build() => 'dine_in';

  void select(String type) => state = type;
}

// ---------------------------------------------------------------------------
// New order table selection
// ---------------------------------------------------------------------------

@riverpod
class NewOrderTableId extends _$NewOrderTableId {
  @override
  String? build() => null;

  void select(String? id) => state = id;
}

// ---------------------------------------------------------------------------
// Create new order operation
// ---------------------------------------------------------------------------

@riverpod
class CreateOrderOperation extends _$CreateOrderOperation {
  @override
  AsyncValue<void> build() => const AsyncData(null);

  Future<bool> createOrder() async {
    final store = ref.read(selectedStoreProvider);
    if (store == null) {
      state = AsyncError('No store selected', StackTrace.current);
      return false;
    }

    final cartItems = ref.read(newOrderCartProvider);
    if (cartItems.isEmpty) {
      state = AsyncError('Cart is empty', StackTrace.current);
      return false;
    }

    state = const AsyncLoading();

    final orderType = ref.read(newOrderTypeProvider);
    final tableId = ref.read(newOrderTableIdProvider);

    final orderCreate = OrderCreate(
      storeId: store.id,
      orderType: orderType,
      tableId: orderType == 'dine_in' ? tableId : null,
      items: cartItems,
    );

    final repo = ref.read(orderRepositoryProvider);
    final result = await repo.createOrder(orderCreate);

    return result.fold(
      (failure) {
        state = AsyncError(failure.message, StackTrace.current);
        return false;
      },
      (order) {
        ref.read(newOrderCartProvider.notifier).clear();
        ref.invalidate(ordersListProvider);
        ref.invalidate(activeOrdersProvider);
        state = const AsyncData(null);
        return true;
      },
    );
  }
}
