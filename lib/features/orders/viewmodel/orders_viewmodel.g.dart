// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orders_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(OrderStatusFilter)
final orderStatusFilterProvider = OrderStatusFilterProvider._();

final class OrderStatusFilterProvider
    extends $NotifierProvider<OrderStatusFilter, String?> {
  OrderStatusFilterProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'orderStatusFilterProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$orderStatusFilterHash();

  @$internal
  @override
  OrderStatusFilter create() => OrderStatusFilter();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String?>(value),
    );
  }
}

String _$orderStatusFilterHash() => r'9a7cedf2f67889f58e7a4cfe5371415981496c54';

abstract class _$OrderStatusFilter extends $Notifier<String?> {
  String? build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<String?, String?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<String?, String?>,
              String?,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(OrderTypeFilter)
final orderTypeFilterProvider = OrderTypeFilterProvider._();

final class OrderTypeFilterProvider
    extends $NotifierProvider<OrderTypeFilter, String?> {
  OrderTypeFilterProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'orderTypeFilterProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$orderTypeFilterHash();

  @$internal
  @override
  OrderTypeFilter create() => OrderTypeFilter();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String?>(value),
    );
  }
}

String _$orderTypeFilterHash() => r'500d14d7c113c58644163f58ee843802acaffa50';

abstract class _$OrderTypeFilter extends $Notifier<String?> {
  String? build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<String?, String?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<String?, String?>,
              String?,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(OrdersList)
final ordersListProvider = OrdersListProvider._();

final class OrdersListProvider
    extends $AsyncNotifierProvider<OrdersList, List<Order>> {
  OrdersListProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'ordersListProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$ordersListHash();

  @$internal
  @override
  OrdersList create() => OrdersList();
}

String _$ordersListHash() => r'c9f2ffaf29dbe10b2045cdb333ad16265b4b5151';

abstract class _$OrdersList extends $AsyncNotifier<List<Order>> {
  FutureOr<List<Order>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<List<Order>>, List<Order>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<Order>>, List<Order>>,
              AsyncValue<List<Order>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(SelectedOrderId)
final selectedOrderIdProvider = SelectedOrderIdProvider._();

final class SelectedOrderIdProvider
    extends $NotifierProvider<SelectedOrderId, String?> {
  SelectedOrderIdProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'selectedOrderIdProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$selectedOrderIdHash();

  @$internal
  @override
  SelectedOrderId create() => SelectedOrderId();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String?>(value),
    );
  }
}

String _$selectedOrderIdHash() => r'5d30b266a1f9b4adf85f1bd9c6e683984999d148';

abstract class _$SelectedOrderId extends $Notifier<String?> {
  String? build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<String?, String?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<String?, String?>,
              String?,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(OrderDetail)
final orderDetailProvider = OrderDetailProvider._();

final class OrderDetailProvider
    extends $AsyncNotifierProvider<OrderDetail, Order?> {
  OrderDetailProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'orderDetailProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$orderDetailHash();

  @$internal
  @override
  OrderDetail create() => OrderDetail();
}

String _$orderDetailHash() => r'c64b0b787281c70f72a1b408a660793beb6bfef9';

abstract class _$OrderDetail extends $AsyncNotifier<Order?> {
  FutureOr<Order?> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<Order?>, Order?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<Order?>, Order?>,
              AsyncValue<Order?>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(OrdersPageOperations)
final ordersPageOperationsProvider = OrdersPageOperationsProvider._();

final class OrdersPageOperationsProvider
    extends $NotifierProvider<OrdersPageOperations, AsyncValue<void>> {
  OrdersPageOperationsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'ordersPageOperationsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$ordersPageOperationsHash();

  @$internal
  @override
  OrdersPageOperations create() => OrdersPageOperations();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AsyncValue<void> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AsyncValue<void>>(value),
    );
  }
}

String _$ordersPageOperationsHash() =>
    r'f8c1464e572ab5af5e6b18200ccd2c7eedff03fc';

abstract class _$OrdersPageOperations extends $Notifier<AsyncValue<void>> {
  AsyncValue<void> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<void>, AsyncValue<void>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<void>, AsyncValue<void>>,
              AsyncValue<void>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
