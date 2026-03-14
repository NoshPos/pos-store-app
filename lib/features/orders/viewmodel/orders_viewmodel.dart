import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../home/model/order.dart';
import '../../home/repository/order_repository.dart';
import '../../home/viewmodel/home_viewmodel.dart';
import '../../home/viewmodel/store_viewmodel.dart';

part 'orders_viewmodel.g.dart';

// ---------------------------------------------------------------------------
// Order status filter
// ---------------------------------------------------------------------------

@riverpod
class OrderStatusFilter extends _$OrderStatusFilter {
  @override
  String? build() => null; // null = All

  void select(String? status) => state = status;
}

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
    final statusFilter = ref.watch(orderStatusFilterProvider);
    final repo = ref.read(orderRepositoryProvider);

    // Map composite UI filters to server-side status values
    String? serverStatus;
    if (statusFilter != null &&
        statusFilter != 'in_kitchen' &&
        statusFilter != 'ready') {
      serverStatus = statusFilter;
    }

    final result = await repo.getOrders(
      storeId: store.id,
      orderType: orderType,
      status: serverStatus,
    );
    return result.fold((failure) => throw Exception(failure.message), (orders) {
      if (statusFilter == null) return orders;
      // Client-side filtering only needed for composite filters
      if (statusFilter == 'in_kitchen' || statusFilter == 'ready') {
        return orders
            .where((o) => _matchesStatusFilter(o, statusFilter))
            .toList(growable: false);
      }
      return orders;
    });
  }

  Future<void> refresh() async {
    ref.invalidateSelf();
  }

  bool _matchesStatusFilter(Order order, String filter) {
    final status = order.status.toLowerCase();
    final payment = order.paymentStatus.toLowerCase();

    // Always treat fully paid orders as paid in Orders view.
    if (filter == 'paid') {
      return payment == 'completed' || status == 'paid';
    }

    return switch (filter) {
      'open' => status == 'open' && payment != 'completed',
      'in_kitchen' => status == 'sent_to_kitchen' || status == 'preparing',
      'ready' =>
        payment != 'completed' &&
            {
              'ready',
              'served',
              'handed_over',
              'out_for_delivery',
              'delivered',
              'completed',
            }.contains(status),
      'cancelled' => status == 'cancelled',
      _ => status == filter,
    };
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
