// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stores_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(DashboardStoreList)
final dashboardStoreListProvider = DashboardStoreListProvider._();

final class DashboardStoreListProvider
    extends $AsyncNotifierProvider<DashboardStoreList, List<Store>> {
  DashboardStoreListProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'dashboardStoreListProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$dashboardStoreListHash();

  @$internal
  @override
  DashboardStoreList create() => DashboardStoreList();
}

String _$dashboardStoreListHash() =>
    r'5599dd0854df2bfd5327d744bd159e920bce58c5';

abstract class _$DashboardStoreList extends $AsyncNotifier<List<Store>> {
  FutureOr<List<Store>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<List<Store>>, List<Store>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<Store>>, List<Store>>,
              AsyncValue<List<Store>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(CreateStoreAction)
final createStoreActionProvider = CreateStoreActionProvider._();

final class CreateStoreActionProvider
    extends $NotifierProvider<CreateStoreAction, AsyncValue<void>> {
  CreateStoreActionProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'createStoreActionProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$createStoreActionHash();

  @$internal
  @override
  CreateStoreAction create() => CreateStoreAction();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AsyncValue<void> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AsyncValue<void>>(value),
    );
  }
}

String _$createStoreActionHash() => r'd8367a04b68547950679eba88c9a5d2b644f2ac1';

abstract class _$CreateStoreAction extends $Notifier<AsyncValue<void>> {
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

@ProviderFor(UpdateStoreAction)
final updateStoreActionProvider = UpdateStoreActionProvider._();

final class UpdateStoreActionProvider
    extends $NotifierProvider<UpdateStoreAction, AsyncValue<void>> {
  UpdateStoreActionProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'updateStoreActionProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$updateStoreActionHash();

  @$internal
  @override
  UpdateStoreAction create() => UpdateStoreAction();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AsyncValue<void> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AsyncValue<void>>(value),
    );
  }
}

String _$updateStoreActionHash() => r'567a23112230ccd802516a9bd510767e8b1a4b9d';

abstract class _$UpdateStoreAction extends $Notifier<AsyncValue<void>> {
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

@ProviderFor(FetchStoreTablesAction)
final fetchStoreTablesActionProvider = FetchStoreTablesActionProvider._();

final class FetchStoreTablesActionProvider
    extends
        $NotifierProvider<FetchStoreTablesAction, AsyncValue<List<String>>> {
  FetchStoreTablesActionProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'fetchStoreTablesActionProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$fetchStoreTablesActionHash();

  @$internal
  @override
  FetchStoreTablesAction create() => FetchStoreTablesAction();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AsyncValue<List<String>> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AsyncValue<List<String>>>(value),
    );
  }
}

String _$fetchStoreTablesActionHash() =>
    r'bb09990978ef452614f12df150f87aa0bd9d4edc';

abstract class _$FetchStoreTablesAction
    extends $Notifier<AsyncValue<List<String>>> {
  AsyncValue<List<String>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref as $Ref<AsyncValue<List<String>>, AsyncValue<List<String>>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<String>>, AsyncValue<List<String>>>,
              AsyncValue<List<String>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
