// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(CategoryList)
final categoryListProvider = CategoryListProvider._();

final class CategoryListProvider
    extends $AsyncNotifierProvider<CategoryList, List<Category>> {
  CategoryListProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'categoryListProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$categoryListHash();

  @$internal
  @override
  CategoryList create() => CategoryList();
}

String _$categoryListHash() => r'f54bc94b62baf8742dcafd2749d9fa003328b540';

abstract class _$CategoryList extends $AsyncNotifier<List<Category>> {
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

@ProviderFor(SelectedCategoryId)
final selectedCategoryIdProvider = SelectedCategoryIdProvider._();

final class SelectedCategoryIdProvider
    extends $NotifierProvider<SelectedCategoryId, String?> {
  SelectedCategoryIdProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'selectedCategoryIdProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$selectedCategoryIdHash();

  @$internal
  @override
  SelectedCategoryId create() => SelectedCategoryId();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String?>(value),
    );
  }
}

String _$selectedCategoryIdHash() =>
    r'e200877d189e9efa39b0a04655f56101e28aaf21';

abstract class _$SelectedCategoryId extends $Notifier<String?> {
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

@ProviderFor(ProductList)
final productListProvider = ProductListProvider._();

final class ProductListProvider
    extends $AsyncNotifierProvider<ProductList, List<Product>> {
  ProductListProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'productListProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$productListHash();

  @$internal
  @override
  ProductList create() => ProductList();
}

String _$productListHash() => r'daa701da7c0e46630bc3444e400ec419203b2b6f';

abstract class _$ProductList extends $AsyncNotifier<List<Product>> {
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

/// All products for the current store (no category filter) — used for name lookups.

@ProviderFor(AllProducts)
final allProductsProvider = AllProductsProvider._();

/// All products for the current store (no category filter) — used for name lookups.
final class AllProductsProvider
    extends $AsyncNotifierProvider<AllProducts, List<Product>> {
  /// All products for the current store (no category filter) — used for name lookups.
  AllProductsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'allProductsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$allProductsHash();

  @$internal
  @override
  AllProducts create() => AllProducts();
}

String _$allProductsHash() => r'beafc1d35498ea2d5435800a4efdc717ec22c286';

/// All products for the current store (no category filter) — used for name lookups.

abstract class _$AllProducts extends $AsyncNotifier<List<Product>> {
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

/// Maps product ID → Product for fast lookups.

@ProviderFor(productMap)
final productMapProvider = ProductMapProvider._();

/// Maps product ID → Product for fast lookups.

final class ProductMapProvider
    extends
        $FunctionalProvider<
          AsyncValue<Map<String, Product>>,
          Map<String, Product>,
          FutureOr<Map<String, Product>>
        >
    with
        $FutureModifier<Map<String, Product>>,
        $FutureProvider<Map<String, Product>> {
  /// Maps product ID → Product for fast lookups.
  ProductMapProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'productMapProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$productMapHash();

  @$internal
  @override
  $FutureProviderElement<Map<String, Product>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<Map<String, Product>> create(Ref ref) {
    return productMap(ref);
  }
}

String _$productMapHash() => r'96beef2b06d756bd533cb96b476ddf43f83fd2e2';

@ProviderFor(ActiveOrders)
final activeOrdersProvider = ActiveOrdersProvider._();

final class ActiveOrdersProvider
    extends $AsyncNotifierProvider<ActiveOrders, List<Order>> {
  ActiveOrdersProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'activeOrdersProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$activeOrdersHash();

  @$internal
  @override
  ActiveOrders create() => ActiveOrders();
}

String _$activeOrdersHash() => r'4d55a59f84f56a06d03a019f63d3cefdc0b02274';

abstract class _$ActiveOrders extends $AsyncNotifier<List<Order>> {
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

@ProviderFor(CurrentOrderId)
final currentOrderIdProvider = CurrentOrderIdProvider._();

final class CurrentOrderIdProvider
    extends $NotifierProvider<CurrentOrderId, String?> {
  CurrentOrderIdProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'currentOrderIdProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$currentOrderIdHash();

  @$internal
  @override
  CurrentOrderId create() => CurrentOrderId();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String?>(value),
    );
  }
}

String _$currentOrderIdHash() => r'45e5fa47faddf08d984383ebe17d029166d959cb';

abstract class _$CurrentOrderId extends $Notifier<String?> {
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

/// Holds the full current Order object after save / load.

@ProviderFor(CurrentOrder)
final currentOrderProvider = CurrentOrderProvider._();

/// Holds the full current Order object after save / load.
final class CurrentOrderProvider
    extends $NotifierProvider<CurrentOrder, Order?> {
  /// Holds the full current Order object after save / load.
  CurrentOrderProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'currentOrderProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$currentOrderHash();

  @$internal
  @override
  CurrentOrder create() => CurrentOrder();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Order? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Order?>(value),
    );
  }
}

String _$currentOrderHash() => r'1c5cf7d741d5bdf3e5a69e3dffd483ee92924fe9';

/// Holds the full current Order object after save / load.

abstract class _$CurrentOrder extends $Notifier<Order?> {
  Order? build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<Order?, Order?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<Order?, Order?>,
              Order?,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(Cart)
final cartProvider = CartProvider._();

final class CartProvider extends $NotifierProvider<Cart, List<CartItem>> {
  CartProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'cartProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$cartHash();

  @$internal
  @override
  Cart create() => Cart();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<CartItem> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<CartItem>>(value),
    );
  }
}

String _$cartHash() => r'2c2162647db913a218b00c957bde3c62fadca8c9';

abstract class _$Cart extends $Notifier<List<CartItem>> {
  List<CartItem> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<List<CartItem>, List<CartItem>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<List<CartItem>, List<CartItem>>,
              List<CartItem>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(SelectedOrderType)
final selectedOrderTypeProvider = SelectedOrderTypeProvider._();

final class SelectedOrderTypeProvider
    extends $NotifierProvider<SelectedOrderType, String> {
  SelectedOrderTypeProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'selectedOrderTypeProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$selectedOrderTypeHash();

  @$internal
  @override
  SelectedOrderType create() => SelectedOrderType();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String>(value),
    );
  }
}

String _$selectedOrderTypeHash() => r'ec79348c95623a5411eabda90922a7df178d9e2c';

abstract class _$SelectedOrderType extends $Notifier<String> {
  String build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<String, String>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<String, String>,
              String,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(SelectedTable)
final selectedTableProvider = SelectedTableProvider._();

final class SelectedTableProvider
    extends $NotifierProvider<SelectedTable, DineInTable?> {
  SelectedTableProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'selectedTableProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$selectedTableHash();

  @$internal
  @override
  SelectedTable create() => SelectedTable();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(DineInTable? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<DineInTable?>(value),
    );
  }
}

String _$selectedTableHash() => r'ddc4f02fca8a6de0bff61e10da5347cdfb962b09';

abstract class _$SelectedTable extends $Notifier<DineInTable?> {
  DineInTable? build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<DineInTable?, DineInTable?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<DineInTable?, DineInTable?>,
              DineInTable?,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(StoreTables)
final storeTablesProvider = StoreTablesProvider._();

final class StoreTablesProvider
    extends $AsyncNotifierProvider<StoreTables, List<DineInTable>> {
  StoreTablesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'storeTablesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$storeTablesHash();

  @$internal
  @override
  StoreTables create() => StoreTables();
}

String _$storeTablesHash() => r'd4d75bca3db933cecfe8bc869b222a6963f4a92b';

abstract class _$StoreTables extends $AsyncNotifier<List<DineInTable>> {
  FutureOr<List<DineInTable>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref as $Ref<AsyncValue<List<DineInTable>>, List<DineInTable>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<DineInTable>>, List<DineInTable>>,
              AsyncValue<List<DineInTable>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(SelectedPaymentMethod)
final selectedPaymentMethodProvider = SelectedPaymentMethodProvider._();

final class SelectedPaymentMethodProvider
    extends $NotifierProvider<SelectedPaymentMethod, String> {
  SelectedPaymentMethodProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'selectedPaymentMethodProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$selectedPaymentMethodHash();

  @$internal
  @override
  SelectedPaymentMethod create() => SelectedPaymentMethod();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String>(value),
    );
  }
}

String _$selectedPaymentMethodHash() =>
    r'97847d201ff0e9d2c227ca422c5dceae92f6f69c';

abstract class _$SelectedPaymentMethod extends $Notifier<String> {
  String build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<String, String>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<String, String>,
              String,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(OrderOperations)
final orderOperationsProvider = OrderOperationsProvider._();

final class OrderOperationsProvider
    extends $NotifierProvider<OrderOperations, AsyncValue<void>> {
  OrderOperationsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'orderOperationsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$orderOperationsHash();

  @$internal
  @override
  OrderOperations create() => OrderOperations();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AsyncValue<void> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AsyncValue<void>>(value),
    );
  }
}

String _$orderOperationsHash() => r'd3fe71b540ec9bdeca69c49b4a01e765dc7913aa';

abstract class _$OrderOperations extends $Notifier<AsyncValue<void>> {
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
