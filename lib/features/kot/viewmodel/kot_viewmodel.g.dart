// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kot_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(KitchenOrdersList)
final kitchenOrdersListProvider = KitchenOrdersListProvider._();

final class KitchenOrdersListProvider
    extends
        $AsyncNotifierProvider<KitchenOrdersList, List<KitchenOrderTicket>> {
  KitchenOrdersListProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'kitchenOrdersListProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$kitchenOrdersListHash();

  @$internal
  @override
  KitchenOrdersList create() => KitchenOrdersList();
}

String _$kitchenOrdersListHash() => r'9e9d6d9f28975be57dfca096a10bdc6a29e6dcc7';

abstract class _$KitchenOrdersList
    extends $AsyncNotifier<List<KitchenOrderTicket>> {
  FutureOr<List<KitchenOrderTicket>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref
            as $Ref<
              AsyncValue<List<KitchenOrderTicket>>,
              List<KitchenOrderTicket>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<List<KitchenOrderTicket>>,
                List<KitchenOrderTicket>
              >,
              AsyncValue<List<KitchenOrderTicket>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(KotStatusFilter)
final kotStatusFilterProvider = KotStatusFilterProvider._();

final class KotStatusFilterProvider
    extends $NotifierProvider<KotStatusFilter, String?> {
  KotStatusFilterProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'kotStatusFilterProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$kotStatusFilterHash();

  @$internal
  @override
  KotStatusFilter create() => KotStatusFilter();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String?>(value),
    );
  }
}

String _$kotStatusFilterHash() => r'bcbadb3d356cc3a70b35752c78f65d90e0de64f1';

abstract class _$KotStatusFilter extends $Notifier<String?> {
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

@ProviderFor(KotOperations)
final kotOperationsProvider = KotOperationsProvider._();

final class KotOperationsProvider
    extends $NotifierProvider<KotOperations, AsyncValue<void>> {
  KotOperationsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'kotOperationsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$kotOperationsHash();

  @$internal
  @override
  KotOperations create() => KotOperations();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AsyncValue<void> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AsyncValue<void>>(value),
    );
  }
}

String _$kotOperationsHash() => r'51620a69b28561ba64da72998baba7ac2e801f1e';

abstract class _$KotOperations extends $Notifier<AsyncValue<void>> {
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
