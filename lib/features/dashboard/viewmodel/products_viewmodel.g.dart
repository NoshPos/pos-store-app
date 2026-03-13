// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(DashboardProductList)
final dashboardProductListProvider = DashboardProductListProvider._();

final class DashboardProductListProvider
    extends $AsyncNotifierProvider<DashboardProductList, List<Product>> {
  DashboardProductListProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'dashboardProductListProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$dashboardProductListHash();

  @$internal
  @override
  DashboardProductList create() => DashboardProductList();
}

String _$dashboardProductListHash() =>
    r'9bc1e0ceed1f7dc798840f290a8476a675292b83';

abstract class _$DashboardProductList extends $AsyncNotifier<List<Product>> {
  FutureOr<List<Product>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<List<Product>>, List<Product>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<Product>>, List<Product>>,
              AsyncValue<List<Product>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(DashboardCategoryList)
final dashboardCategoryListProvider = DashboardCategoryListProvider._();

final class DashboardCategoryListProvider
    extends $AsyncNotifierProvider<DashboardCategoryList, List<Category>> {
  DashboardCategoryListProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'dashboardCategoryListProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$dashboardCategoryListHash();

  @$internal
  @override
  DashboardCategoryList create() => DashboardCategoryList();
}

String _$dashboardCategoryListHash() =>
    r'e160cf2997323a10b7bf79bed45b027ca468e252';

abstract class _$DashboardCategoryList extends $AsyncNotifier<List<Category>> {
  FutureOr<List<Category>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<List<Category>>, List<Category>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<Category>>, List<Category>>,
              AsyncValue<List<Category>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(DashboardProductCategoryFilter)
final dashboardProductCategoryFilterProvider =
    DashboardProductCategoryFilterProvider._();

final class DashboardProductCategoryFilterProvider
    extends $NotifierProvider<DashboardProductCategoryFilter, String?> {
  DashboardProductCategoryFilterProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'dashboardProductCategoryFilterProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$dashboardProductCategoryFilterHash();

  @$internal
  @override
  DashboardProductCategoryFilter create() => DashboardProductCategoryFilter();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String?>(value),
    );
  }
}

String _$dashboardProductCategoryFilterHash() =>
    r'd08b4181f99c504aa186fa9b4b030065b25f1ff4';

abstract class _$DashboardProductCategoryFilter extends $Notifier<String?> {
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

@ProviderFor(CreateProductAction)
final createProductActionProvider = CreateProductActionProvider._();

final class CreateProductActionProvider
    extends $NotifierProvider<CreateProductAction, AsyncValue<void>> {
  CreateProductActionProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'createProductActionProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$createProductActionHash();

  @$internal
  @override
  CreateProductAction create() => CreateProductAction();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AsyncValue<void> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AsyncValue<void>>(value),
    );
  }
}

String _$createProductActionHash() =>
    r'bb7780248f4c9a8889bacd7d4115afd5d9cb5d90';

abstract class _$CreateProductAction extends $Notifier<AsyncValue<void>> {
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

@ProviderFor(UpdateProductAction)
final updateProductActionProvider = UpdateProductActionProvider._();

final class UpdateProductActionProvider
    extends $NotifierProvider<UpdateProductAction, AsyncValue<void>> {
  UpdateProductActionProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'updateProductActionProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$updateProductActionHash();

  @$internal
  @override
  UpdateProductAction create() => UpdateProductAction();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AsyncValue<void> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AsyncValue<void>>(value),
    );
  }
}

String _$updateProductActionHash() =>
    r'f251f5e86aa6274d01af6493f0ee343073730841';

abstract class _$UpdateProductAction extends $Notifier<AsyncValue<void>> {
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

@ProviderFor(DeleteProductAction)
final deleteProductActionProvider = DeleteProductActionProvider._();

final class DeleteProductActionProvider
    extends $NotifierProvider<DeleteProductAction, AsyncValue<void>> {
  DeleteProductActionProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'deleteProductActionProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$deleteProductActionHash();

  @$internal
  @override
  DeleteProductAction create() => DeleteProductAction();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AsyncValue<void> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AsyncValue<void>>(value),
    );
  }
}

String _$deleteProductActionHash() =>
    r'7c65e53bbe72bb19602c307329d8b619a0d57368';

abstract class _$DeleteProductAction extends $Notifier<AsyncValue<void>> {
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

@ProviderFor(CreateCategoryAction)
final createCategoryActionProvider = CreateCategoryActionProvider._();

final class CreateCategoryActionProvider
    extends $NotifierProvider<CreateCategoryAction, AsyncValue<void>> {
  CreateCategoryActionProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'createCategoryActionProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$createCategoryActionHash();

  @$internal
  @override
  CreateCategoryAction create() => CreateCategoryAction();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AsyncValue<void> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AsyncValue<void>>(value),
    );
  }
}

String _$createCategoryActionHash() =>
    r'42c2baa988c107a35c8cd844ff975575b5ac7816';

abstract class _$CreateCategoryAction extends $Notifier<AsyncValue<void>> {
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

@ProviderFor(DeleteCategoryAction)
final deleteCategoryActionProvider = DeleteCategoryActionProvider._();

final class DeleteCategoryActionProvider
    extends $NotifierProvider<DeleteCategoryAction, AsyncValue<void>> {
  DeleteCategoryActionProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'deleteCategoryActionProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$deleteCategoryActionHash();

  @$internal
  @override
  DeleteCategoryAction create() => DeleteCategoryAction();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AsyncValue<void> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AsyncValue<void>>(value),
    );
  }
}

String _$deleteCategoryActionHash() =>
    r'5d557ca90b39f58a2f6988d18b3c795a0c374e82';

abstract class _$DeleteCategoryAction extends $Notifier<AsyncValue<void>> {
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
