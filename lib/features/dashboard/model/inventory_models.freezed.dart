// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inventory_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$InventoryItem {

 String get id;@JsonKey(name: 'store_id') String get storeId; String get name; String? get sku; String? get category;@JsonKey(name: 'unit_id') String get unitId;@JsonKey(name: 'min_stock') double get minStock;@JsonKey(name: 'max_stock') double? get maxStock;@JsonKey(name: 'reorder_level') double? get reorderLevel;@JsonKey(name: 'reorder_quantity') double? get reorderQuantity;@JsonKey(name: 'last_purchase_price') double? get lastPurchasePrice;@JsonKey(name: 'average_cost') double? get averageCost;@JsonKey(name: 'is_active') bool get isActive;@JsonKey(name: 'created_at') DateTime? get createdAt;
/// Create a copy of InventoryItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InventoryItemCopyWith<InventoryItem> get copyWith => _$InventoryItemCopyWithImpl<InventoryItem>(this as InventoryItem, _$identity);

  /// Serializes this InventoryItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InventoryItem&&(identical(other.id, id) || other.id == id)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.name, name) || other.name == name)&&(identical(other.sku, sku) || other.sku == sku)&&(identical(other.category, category) || other.category == category)&&(identical(other.unitId, unitId) || other.unitId == unitId)&&(identical(other.minStock, minStock) || other.minStock == minStock)&&(identical(other.maxStock, maxStock) || other.maxStock == maxStock)&&(identical(other.reorderLevel, reorderLevel) || other.reorderLevel == reorderLevel)&&(identical(other.reorderQuantity, reorderQuantity) || other.reorderQuantity == reorderQuantity)&&(identical(other.lastPurchasePrice, lastPurchasePrice) || other.lastPurchasePrice == lastPurchasePrice)&&(identical(other.averageCost, averageCost) || other.averageCost == averageCost)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,storeId,name,sku,category,unitId,minStock,maxStock,reorderLevel,reorderQuantity,lastPurchasePrice,averageCost,isActive,createdAt);

@override
String toString() {
  return 'InventoryItem(id: $id, storeId: $storeId, name: $name, sku: $sku, category: $category, unitId: $unitId, minStock: $minStock, maxStock: $maxStock, reorderLevel: $reorderLevel, reorderQuantity: $reorderQuantity, lastPurchasePrice: $lastPurchasePrice, averageCost: $averageCost, isActive: $isActive, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $InventoryItemCopyWith<$Res>  {
  factory $InventoryItemCopyWith(InventoryItem value, $Res Function(InventoryItem) _then) = _$InventoryItemCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(name: 'store_id') String storeId, String name, String? sku, String? category,@JsonKey(name: 'unit_id') String unitId,@JsonKey(name: 'min_stock') double minStock,@JsonKey(name: 'max_stock') double? maxStock,@JsonKey(name: 'reorder_level') double? reorderLevel,@JsonKey(name: 'reorder_quantity') double? reorderQuantity,@JsonKey(name: 'last_purchase_price') double? lastPurchasePrice,@JsonKey(name: 'average_cost') double? averageCost,@JsonKey(name: 'is_active') bool isActive,@JsonKey(name: 'created_at') DateTime? createdAt
});




}
/// @nodoc
class _$InventoryItemCopyWithImpl<$Res>
    implements $InventoryItemCopyWith<$Res> {
  _$InventoryItemCopyWithImpl(this._self, this._then);

  final InventoryItem _self;
  final $Res Function(InventoryItem) _then;

/// Create a copy of InventoryItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? storeId = null,Object? name = null,Object? sku = freezed,Object? category = freezed,Object? unitId = null,Object? minStock = null,Object? maxStock = freezed,Object? reorderLevel = freezed,Object? reorderQuantity = freezed,Object? lastPurchasePrice = freezed,Object? averageCost = freezed,Object? isActive = null,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,sku: freezed == sku ? _self.sku : sku // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,unitId: null == unitId ? _self.unitId : unitId // ignore: cast_nullable_to_non_nullable
as String,minStock: null == minStock ? _self.minStock : minStock // ignore: cast_nullable_to_non_nullable
as double,maxStock: freezed == maxStock ? _self.maxStock : maxStock // ignore: cast_nullable_to_non_nullable
as double?,reorderLevel: freezed == reorderLevel ? _self.reorderLevel : reorderLevel // ignore: cast_nullable_to_non_nullable
as double?,reorderQuantity: freezed == reorderQuantity ? _self.reorderQuantity : reorderQuantity // ignore: cast_nullable_to_non_nullable
as double?,lastPurchasePrice: freezed == lastPurchasePrice ? _self.lastPurchasePrice : lastPurchasePrice // ignore: cast_nullable_to_non_nullable
as double?,averageCost: freezed == averageCost ? _self.averageCost : averageCost // ignore: cast_nullable_to_non_nullable
as double?,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [InventoryItem].
extension InventoryItemPatterns on InventoryItem {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InventoryItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InventoryItem() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InventoryItem value)  $default,){
final _that = this;
switch (_that) {
case _InventoryItem():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InventoryItem value)?  $default,){
final _that = this;
switch (_that) {
case _InventoryItem() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'store_id')  String storeId,  String name,  String? sku,  String? category, @JsonKey(name: 'unit_id')  String unitId, @JsonKey(name: 'min_stock')  double minStock, @JsonKey(name: 'max_stock')  double? maxStock, @JsonKey(name: 'reorder_level')  double? reorderLevel, @JsonKey(name: 'reorder_quantity')  double? reorderQuantity, @JsonKey(name: 'last_purchase_price')  double? lastPurchasePrice, @JsonKey(name: 'average_cost')  double? averageCost, @JsonKey(name: 'is_active')  bool isActive, @JsonKey(name: 'created_at')  DateTime? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InventoryItem() when $default != null:
return $default(_that.id,_that.storeId,_that.name,_that.sku,_that.category,_that.unitId,_that.minStock,_that.maxStock,_that.reorderLevel,_that.reorderQuantity,_that.lastPurchasePrice,_that.averageCost,_that.isActive,_that.createdAt);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'store_id')  String storeId,  String name,  String? sku,  String? category, @JsonKey(name: 'unit_id')  String unitId, @JsonKey(name: 'min_stock')  double minStock, @JsonKey(name: 'max_stock')  double? maxStock, @JsonKey(name: 'reorder_level')  double? reorderLevel, @JsonKey(name: 'reorder_quantity')  double? reorderQuantity, @JsonKey(name: 'last_purchase_price')  double? lastPurchasePrice, @JsonKey(name: 'average_cost')  double? averageCost, @JsonKey(name: 'is_active')  bool isActive, @JsonKey(name: 'created_at')  DateTime? createdAt)  $default,) {final _that = this;
switch (_that) {
case _InventoryItem():
return $default(_that.id,_that.storeId,_that.name,_that.sku,_that.category,_that.unitId,_that.minStock,_that.maxStock,_that.reorderLevel,_that.reorderQuantity,_that.lastPurchasePrice,_that.averageCost,_that.isActive,_that.createdAt);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(name: 'store_id')  String storeId,  String name,  String? sku,  String? category, @JsonKey(name: 'unit_id')  String unitId, @JsonKey(name: 'min_stock')  double minStock, @JsonKey(name: 'max_stock')  double? maxStock, @JsonKey(name: 'reorder_level')  double? reorderLevel, @JsonKey(name: 'reorder_quantity')  double? reorderQuantity, @JsonKey(name: 'last_purchase_price')  double? lastPurchasePrice, @JsonKey(name: 'average_cost')  double? averageCost, @JsonKey(name: 'is_active')  bool isActive, @JsonKey(name: 'created_at')  DateTime? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _InventoryItem() when $default != null:
return $default(_that.id,_that.storeId,_that.name,_that.sku,_that.category,_that.unitId,_that.minStock,_that.maxStock,_that.reorderLevel,_that.reorderQuantity,_that.lastPurchasePrice,_that.averageCost,_that.isActive,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InventoryItem implements InventoryItem {
  const _InventoryItem({required this.id, @JsonKey(name: 'store_id') required this.storeId, required this.name, this.sku, this.category, @JsonKey(name: 'unit_id') required this.unitId, @JsonKey(name: 'min_stock') this.minStock = 0, @JsonKey(name: 'max_stock') this.maxStock, @JsonKey(name: 'reorder_level') this.reorderLevel, @JsonKey(name: 'reorder_quantity') this.reorderQuantity, @JsonKey(name: 'last_purchase_price') this.lastPurchasePrice, @JsonKey(name: 'average_cost') this.averageCost, @JsonKey(name: 'is_active') this.isActive = true, @JsonKey(name: 'created_at') this.createdAt});
  factory _InventoryItem.fromJson(Map<String, dynamic> json) => _$InventoryItemFromJson(json);

@override final  String id;
@override@JsonKey(name: 'store_id') final  String storeId;
@override final  String name;
@override final  String? sku;
@override final  String? category;
@override@JsonKey(name: 'unit_id') final  String unitId;
@override@JsonKey(name: 'min_stock') final  double minStock;
@override@JsonKey(name: 'max_stock') final  double? maxStock;
@override@JsonKey(name: 'reorder_level') final  double? reorderLevel;
@override@JsonKey(name: 'reorder_quantity') final  double? reorderQuantity;
@override@JsonKey(name: 'last_purchase_price') final  double? lastPurchasePrice;
@override@JsonKey(name: 'average_cost') final  double? averageCost;
@override@JsonKey(name: 'is_active') final  bool isActive;
@override@JsonKey(name: 'created_at') final  DateTime? createdAt;

/// Create a copy of InventoryItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InventoryItemCopyWith<_InventoryItem> get copyWith => __$InventoryItemCopyWithImpl<_InventoryItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InventoryItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InventoryItem&&(identical(other.id, id) || other.id == id)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.name, name) || other.name == name)&&(identical(other.sku, sku) || other.sku == sku)&&(identical(other.category, category) || other.category == category)&&(identical(other.unitId, unitId) || other.unitId == unitId)&&(identical(other.minStock, minStock) || other.minStock == minStock)&&(identical(other.maxStock, maxStock) || other.maxStock == maxStock)&&(identical(other.reorderLevel, reorderLevel) || other.reorderLevel == reorderLevel)&&(identical(other.reorderQuantity, reorderQuantity) || other.reorderQuantity == reorderQuantity)&&(identical(other.lastPurchasePrice, lastPurchasePrice) || other.lastPurchasePrice == lastPurchasePrice)&&(identical(other.averageCost, averageCost) || other.averageCost == averageCost)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,storeId,name,sku,category,unitId,minStock,maxStock,reorderLevel,reorderQuantity,lastPurchasePrice,averageCost,isActive,createdAt);

@override
String toString() {
  return 'InventoryItem(id: $id, storeId: $storeId, name: $name, sku: $sku, category: $category, unitId: $unitId, minStock: $minStock, maxStock: $maxStock, reorderLevel: $reorderLevel, reorderQuantity: $reorderQuantity, lastPurchasePrice: $lastPurchasePrice, averageCost: $averageCost, isActive: $isActive, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$InventoryItemCopyWith<$Res> implements $InventoryItemCopyWith<$Res> {
  factory _$InventoryItemCopyWith(_InventoryItem value, $Res Function(_InventoryItem) _then) = __$InventoryItemCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(name: 'store_id') String storeId, String name, String? sku, String? category,@JsonKey(name: 'unit_id') String unitId,@JsonKey(name: 'min_stock') double minStock,@JsonKey(name: 'max_stock') double? maxStock,@JsonKey(name: 'reorder_level') double? reorderLevel,@JsonKey(name: 'reorder_quantity') double? reorderQuantity,@JsonKey(name: 'last_purchase_price') double? lastPurchasePrice,@JsonKey(name: 'average_cost') double? averageCost,@JsonKey(name: 'is_active') bool isActive,@JsonKey(name: 'created_at') DateTime? createdAt
});




}
/// @nodoc
class __$InventoryItemCopyWithImpl<$Res>
    implements _$InventoryItemCopyWith<$Res> {
  __$InventoryItemCopyWithImpl(this._self, this._then);

  final _InventoryItem _self;
  final $Res Function(_InventoryItem) _then;

/// Create a copy of InventoryItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? storeId = null,Object? name = null,Object? sku = freezed,Object? category = freezed,Object? unitId = null,Object? minStock = null,Object? maxStock = freezed,Object? reorderLevel = freezed,Object? reorderQuantity = freezed,Object? lastPurchasePrice = freezed,Object? averageCost = freezed,Object? isActive = null,Object? createdAt = freezed,}) {
  return _then(_InventoryItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,sku: freezed == sku ? _self.sku : sku // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,unitId: null == unitId ? _self.unitId : unitId // ignore: cast_nullable_to_non_nullable
as String,minStock: null == minStock ? _self.minStock : minStock // ignore: cast_nullable_to_non_nullable
as double,maxStock: freezed == maxStock ? _self.maxStock : maxStock // ignore: cast_nullable_to_non_nullable
as double?,reorderLevel: freezed == reorderLevel ? _self.reorderLevel : reorderLevel // ignore: cast_nullable_to_non_nullable
as double?,reorderQuantity: freezed == reorderQuantity ? _self.reorderQuantity : reorderQuantity // ignore: cast_nullable_to_non_nullable
as double?,lastPurchasePrice: freezed == lastPurchasePrice ? _self.lastPurchasePrice : lastPurchasePrice // ignore: cast_nullable_to_non_nullable
as double?,averageCost: freezed == averageCost ? _self.averageCost : averageCost // ignore: cast_nullable_to_non_nullable
as double?,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}


/// @nodoc
mixin _$InventoryItemCreate {

@JsonKey(name: 'store_id') String get storeId; String get name; String? get sku; String? get category;@JsonKey(name: 'unit_id') String get unitId;@JsonKey(name: 'min_stock') double get minStock;@JsonKey(name: 'max_stock') double? get maxStock;@JsonKey(name: 'is_active') bool get isActive;
/// Create a copy of InventoryItemCreate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InventoryItemCreateCopyWith<InventoryItemCreate> get copyWith => _$InventoryItemCreateCopyWithImpl<InventoryItemCreate>(this as InventoryItemCreate, _$identity);

  /// Serializes this InventoryItemCreate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InventoryItemCreate&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.name, name) || other.name == name)&&(identical(other.sku, sku) || other.sku == sku)&&(identical(other.category, category) || other.category == category)&&(identical(other.unitId, unitId) || other.unitId == unitId)&&(identical(other.minStock, minStock) || other.minStock == minStock)&&(identical(other.maxStock, maxStock) || other.maxStock == maxStock)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,storeId,name,sku,category,unitId,minStock,maxStock,isActive);

@override
String toString() {
  return 'InventoryItemCreate(storeId: $storeId, name: $name, sku: $sku, category: $category, unitId: $unitId, minStock: $minStock, maxStock: $maxStock, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class $InventoryItemCreateCopyWith<$Res>  {
  factory $InventoryItemCreateCopyWith(InventoryItemCreate value, $Res Function(InventoryItemCreate) _then) = _$InventoryItemCreateCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'store_id') String storeId, String name, String? sku, String? category,@JsonKey(name: 'unit_id') String unitId,@JsonKey(name: 'min_stock') double minStock,@JsonKey(name: 'max_stock') double? maxStock,@JsonKey(name: 'is_active') bool isActive
});




}
/// @nodoc
class _$InventoryItemCreateCopyWithImpl<$Res>
    implements $InventoryItemCreateCopyWith<$Res> {
  _$InventoryItemCreateCopyWithImpl(this._self, this._then);

  final InventoryItemCreate _self;
  final $Res Function(InventoryItemCreate) _then;

/// Create a copy of InventoryItemCreate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? storeId = null,Object? name = null,Object? sku = freezed,Object? category = freezed,Object? unitId = null,Object? minStock = null,Object? maxStock = freezed,Object? isActive = null,}) {
  return _then(_self.copyWith(
storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,sku: freezed == sku ? _self.sku : sku // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,unitId: null == unitId ? _self.unitId : unitId // ignore: cast_nullable_to_non_nullable
as String,minStock: null == minStock ? _self.minStock : minStock // ignore: cast_nullable_to_non_nullable
as double,maxStock: freezed == maxStock ? _self.maxStock : maxStock // ignore: cast_nullable_to_non_nullable
as double?,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [InventoryItemCreate].
extension InventoryItemCreatePatterns on InventoryItemCreate {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InventoryItemCreate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InventoryItemCreate() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InventoryItemCreate value)  $default,){
final _that = this;
switch (_that) {
case _InventoryItemCreate():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InventoryItemCreate value)?  $default,){
final _that = this;
switch (_that) {
case _InventoryItemCreate() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'store_id')  String storeId,  String name,  String? sku,  String? category, @JsonKey(name: 'unit_id')  String unitId, @JsonKey(name: 'min_stock')  double minStock, @JsonKey(name: 'max_stock')  double? maxStock, @JsonKey(name: 'is_active')  bool isActive)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InventoryItemCreate() when $default != null:
return $default(_that.storeId,_that.name,_that.sku,_that.category,_that.unitId,_that.minStock,_that.maxStock,_that.isActive);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'store_id')  String storeId,  String name,  String? sku,  String? category, @JsonKey(name: 'unit_id')  String unitId, @JsonKey(name: 'min_stock')  double minStock, @JsonKey(name: 'max_stock')  double? maxStock, @JsonKey(name: 'is_active')  bool isActive)  $default,) {final _that = this;
switch (_that) {
case _InventoryItemCreate():
return $default(_that.storeId,_that.name,_that.sku,_that.category,_that.unitId,_that.minStock,_that.maxStock,_that.isActive);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'store_id')  String storeId,  String name,  String? sku,  String? category, @JsonKey(name: 'unit_id')  String unitId, @JsonKey(name: 'min_stock')  double minStock, @JsonKey(name: 'max_stock')  double? maxStock, @JsonKey(name: 'is_active')  bool isActive)?  $default,) {final _that = this;
switch (_that) {
case _InventoryItemCreate() when $default != null:
return $default(_that.storeId,_that.name,_that.sku,_that.category,_that.unitId,_that.minStock,_that.maxStock,_that.isActive);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InventoryItemCreate implements InventoryItemCreate {
  const _InventoryItemCreate({@JsonKey(name: 'store_id') required this.storeId, required this.name, this.sku, this.category, @JsonKey(name: 'unit_id') required this.unitId, @JsonKey(name: 'min_stock') this.minStock = 0, @JsonKey(name: 'max_stock') this.maxStock, @JsonKey(name: 'is_active') this.isActive = true});
  factory _InventoryItemCreate.fromJson(Map<String, dynamic> json) => _$InventoryItemCreateFromJson(json);

@override@JsonKey(name: 'store_id') final  String storeId;
@override final  String name;
@override final  String? sku;
@override final  String? category;
@override@JsonKey(name: 'unit_id') final  String unitId;
@override@JsonKey(name: 'min_stock') final  double minStock;
@override@JsonKey(name: 'max_stock') final  double? maxStock;
@override@JsonKey(name: 'is_active') final  bool isActive;

/// Create a copy of InventoryItemCreate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InventoryItemCreateCopyWith<_InventoryItemCreate> get copyWith => __$InventoryItemCreateCopyWithImpl<_InventoryItemCreate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InventoryItemCreateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InventoryItemCreate&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.name, name) || other.name == name)&&(identical(other.sku, sku) || other.sku == sku)&&(identical(other.category, category) || other.category == category)&&(identical(other.unitId, unitId) || other.unitId == unitId)&&(identical(other.minStock, minStock) || other.minStock == minStock)&&(identical(other.maxStock, maxStock) || other.maxStock == maxStock)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,storeId,name,sku,category,unitId,minStock,maxStock,isActive);

@override
String toString() {
  return 'InventoryItemCreate(storeId: $storeId, name: $name, sku: $sku, category: $category, unitId: $unitId, minStock: $minStock, maxStock: $maxStock, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class _$InventoryItemCreateCopyWith<$Res> implements $InventoryItemCreateCopyWith<$Res> {
  factory _$InventoryItemCreateCopyWith(_InventoryItemCreate value, $Res Function(_InventoryItemCreate) _then) = __$InventoryItemCreateCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'store_id') String storeId, String name, String? sku, String? category,@JsonKey(name: 'unit_id') String unitId,@JsonKey(name: 'min_stock') double minStock,@JsonKey(name: 'max_stock') double? maxStock,@JsonKey(name: 'is_active') bool isActive
});




}
/// @nodoc
class __$InventoryItemCreateCopyWithImpl<$Res>
    implements _$InventoryItemCreateCopyWith<$Res> {
  __$InventoryItemCreateCopyWithImpl(this._self, this._then);

  final _InventoryItemCreate _self;
  final $Res Function(_InventoryItemCreate) _then;

/// Create a copy of InventoryItemCreate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? storeId = null,Object? name = null,Object? sku = freezed,Object? category = freezed,Object? unitId = null,Object? minStock = null,Object? maxStock = freezed,Object? isActive = null,}) {
  return _then(_InventoryItemCreate(
storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,sku: freezed == sku ? _self.sku : sku // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,unitId: null == unitId ? _self.unitId : unitId // ignore: cast_nullable_to_non_nullable
as String,minStock: null == minStock ? _self.minStock : minStock // ignore: cast_nullable_to_non_nullable
as double,maxStock: freezed == maxStock ? _self.maxStock : maxStock // ignore: cast_nullable_to_non_nullable
as double?,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$InventoryItemUpdate {

 String? get name; String? get sku; String? get category;@JsonKey(name: 'unit_id') String? get unitId;@JsonKey(name: 'min_stock') double? get minStock;@JsonKey(name: 'max_stock') double? get maxStock;@JsonKey(name: 'is_active') bool? get isActive;
/// Create a copy of InventoryItemUpdate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InventoryItemUpdateCopyWith<InventoryItemUpdate> get copyWith => _$InventoryItemUpdateCopyWithImpl<InventoryItemUpdate>(this as InventoryItemUpdate, _$identity);

  /// Serializes this InventoryItemUpdate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InventoryItemUpdate&&(identical(other.name, name) || other.name == name)&&(identical(other.sku, sku) || other.sku == sku)&&(identical(other.category, category) || other.category == category)&&(identical(other.unitId, unitId) || other.unitId == unitId)&&(identical(other.minStock, minStock) || other.minStock == minStock)&&(identical(other.maxStock, maxStock) || other.maxStock == maxStock)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,sku,category,unitId,minStock,maxStock,isActive);

@override
String toString() {
  return 'InventoryItemUpdate(name: $name, sku: $sku, category: $category, unitId: $unitId, minStock: $minStock, maxStock: $maxStock, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class $InventoryItemUpdateCopyWith<$Res>  {
  factory $InventoryItemUpdateCopyWith(InventoryItemUpdate value, $Res Function(InventoryItemUpdate) _then) = _$InventoryItemUpdateCopyWithImpl;
@useResult
$Res call({
 String? name, String? sku, String? category,@JsonKey(name: 'unit_id') String? unitId,@JsonKey(name: 'min_stock') double? minStock,@JsonKey(name: 'max_stock') double? maxStock,@JsonKey(name: 'is_active') bool? isActive
});




}
/// @nodoc
class _$InventoryItemUpdateCopyWithImpl<$Res>
    implements $InventoryItemUpdateCopyWith<$Res> {
  _$InventoryItemUpdateCopyWithImpl(this._self, this._then);

  final InventoryItemUpdate _self;
  final $Res Function(InventoryItemUpdate) _then;

/// Create a copy of InventoryItemUpdate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? sku = freezed,Object? category = freezed,Object? unitId = freezed,Object? minStock = freezed,Object? maxStock = freezed,Object? isActive = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,sku: freezed == sku ? _self.sku : sku // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,unitId: freezed == unitId ? _self.unitId : unitId // ignore: cast_nullable_to_non_nullable
as String?,minStock: freezed == minStock ? _self.minStock : minStock // ignore: cast_nullable_to_non_nullable
as double?,maxStock: freezed == maxStock ? _self.maxStock : maxStock // ignore: cast_nullable_to_non_nullable
as double?,isActive: freezed == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [InventoryItemUpdate].
extension InventoryItemUpdatePatterns on InventoryItemUpdate {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InventoryItemUpdate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InventoryItemUpdate() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InventoryItemUpdate value)  $default,){
final _that = this;
switch (_that) {
case _InventoryItemUpdate():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InventoryItemUpdate value)?  $default,){
final _that = this;
switch (_that) {
case _InventoryItemUpdate() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? name,  String? sku,  String? category, @JsonKey(name: 'unit_id')  String? unitId, @JsonKey(name: 'min_stock')  double? minStock, @JsonKey(name: 'max_stock')  double? maxStock, @JsonKey(name: 'is_active')  bool? isActive)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InventoryItemUpdate() when $default != null:
return $default(_that.name,_that.sku,_that.category,_that.unitId,_that.minStock,_that.maxStock,_that.isActive);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? name,  String? sku,  String? category, @JsonKey(name: 'unit_id')  String? unitId, @JsonKey(name: 'min_stock')  double? minStock, @JsonKey(name: 'max_stock')  double? maxStock, @JsonKey(name: 'is_active')  bool? isActive)  $default,) {final _that = this;
switch (_that) {
case _InventoryItemUpdate():
return $default(_that.name,_that.sku,_that.category,_that.unitId,_that.minStock,_that.maxStock,_that.isActive);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? name,  String? sku,  String? category, @JsonKey(name: 'unit_id')  String? unitId, @JsonKey(name: 'min_stock')  double? minStock, @JsonKey(name: 'max_stock')  double? maxStock, @JsonKey(name: 'is_active')  bool? isActive)?  $default,) {final _that = this;
switch (_that) {
case _InventoryItemUpdate() when $default != null:
return $default(_that.name,_that.sku,_that.category,_that.unitId,_that.minStock,_that.maxStock,_that.isActive);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InventoryItemUpdate implements InventoryItemUpdate {
  const _InventoryItemUpdate({this.name, this.sku, this.category, @JsonKey(name: 'unit_id') this.unitId, @JsonKey(name: 'min_stock') this.minStock, @JsonKey(name: 'max_stock') this.maxStock, @JsonKey(name: 'is_active') this.isActive});
  factory _InventoryItemUpdate.fromJson(Map<String, dynamic> json) => _$InventoryItemUpdateFromJson(json);

@override final  String? name;
@override final  String? sku;
@override final  String? category;
@override@JsonKey(name: 'unit_id') final  String? unitId;
@override@JsonKey(name: 'min_stock') final  double? minStock;
@override@JsonKey(name: 'max_stock') final  double? maxStock;
@override@JsonKey(name: 'is_active') final  bool? isActive;

/// Create a copy of InventoryItemUpdate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InventoryItemUpdateCopyWith<_InventoryItemUpdate> get copyWith => __$InventoryItemUpdateCopyWithImpl<_InventoryItemUpdate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InventoryItemUpdateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InventoryItemUpdate&&(identical(other.name, name) || other.name == name)&&(identical(other.sku, sku) || other.sku == sku)&&(identical(other.category, category) || other.category == category)&&(identical(other.unitId, unitId) || other.unitId == unitId)&&(identical(other.minStock, minStock) || other.minStock == minStock)&&(identical(other.maxStock, maxStock) || other.maxStock == maxStock)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,sku,category,unitId,minStock,maxStock,isActive);

@override
String toString() {
  return 'InventoryItemUpdate(name: $name, sku: $sku, category: $category, unitId: $unitId, minStock: $minStock, maxStock: $maxStock, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class _$InventoryItemUpdateCopyWith<$Res> implements $InventoryItemUpdateCopyWith<$Res> {
  factory _$InventoryItemUpdateCopyWith(_InventoryItemUpdate value, $Res Function(_InventoryItemUpdate) _then) = __$InventoryItemUpdateCopyWithImpl;
@override @useResult
$Res call({
 String? name, String? sku, String? category,@JsonKey(name: 'unit_id') String? unitId,@JsonKey(name: 'min_stock') double? minStock,@JsonKey(name: 'max_stock') double? maxStock,@JsonKey(name: 'is_active') bool? isActive
});




}
/// @nodoc
class __$InventoryItemUpdateCopyWithImpl<$Res>
    implements _$InventoryItemUpdateCopyWith<$Res> {
  __$InventoryItemUpdateCopyWithImpl(this._self, this._then);

  final _InventoryItemUpdate _self;
  final $Res Function(_InventoryItemUpdate) _then;

/// Create a copy of InventoryItemUpdate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? sku = freezed,Object? category = freezed,Object? unitId = freezed,Object? minStock = freezed,Object? maxStock = freezed,Object? isActive = freezed,}) {
  return _then(_InventoryItemUpdate(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,sku: freezed == sku ? _self.sku : sku // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,unitId: freezed == unitId ? _self.unitId : unitId // ignore: cast_nullable_to_non_nullable
as String?,minStock: freezed == minStock ? _self.minStock : minStock // ignore: cast_nullable_to_non_nullable
as double?,maxStock: freezed == maxStock ? _self.maxStock : maxStock // ignore: cast_nullable_to_non_nullable
as double?,isActive: freezed == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}


/// @nodoc
mixin _$StockLevel {

 String get id;@JsonKey(name: 'item_id') String get itemId;@JsonKey(name: 'location_id') String get locationId; double get quantity;@JsonKey(name: 'updated_at') DateTime? get updatedAt;
/// Create a copy of StockLevel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StockLevelCopyWith<StockLevel> get copyWith => _$StockLevelCopyWithImpl<StockLevel>(this as StockLevel, _$identity);

  /// Serializes this StockLevel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StockLevel&&(identical(other.id, id) || other.id == id)&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.locationId, locationId) || other.locationId == locationId)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,itemId,locationId,quantity,updatedAt);

@override
String toString() {
  return 'StockLevel(id: $id, itemId: $itemId, locationId: $locationId, quantity: $quantity, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $StockLevelCopyWith<$Res>  {
  factory $StockLevelCopyWith(StockLevel value, $Res Function(StockLevel) _then) = _$StockLevelCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(name: 'item_id') String itemId,@JsonKey(name: 'location_id') String locationId, double quantity,@JsonKey(name: 'updated_at') DateTime? updatedAt
});




}
/// @nodoc
class _$StockLevelCopyWithImpl<$Res>
    implements $StockLevelCopyWith<$Res> {
  _$StockLevelCopyWithImpl(this._self, this._then);

  final StockLevel _self;
  final $Res Function(StockLevel) _then;

/// Create a copy of StockLevel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? itemId = null,Object? locationId = null,Object? quantity = null,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String,locationId: null == locationId ? _self.locationId : locationId // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [StockLevel].
extension StockLevelPatterns on StockLevel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StockLevel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StockLevel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StockLevel value)  $default,){
final _that = this;
switch (_that) {
case _StockLevel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StockLevel value)?  $default,){
final _that = this;
switch (_that) {
case _StockLevel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'item_id')  String itemId, @JsonKey(name: 'location_id')  String locationId,  double quantity, @JsonKey(name: 'updated_at')  DateTime? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StockLevel() when $default != null:
return $default(_that.id,_that.itemId,_that.locationId,_that.quantity,_that.updatedAt);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'item_id')  String itemId, @JsonKey(name: 'location_id')  String locationId,  double quantity, @JsonKey(name: 'updated_at')  DateTime? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _StockLevel():
return $default(_that.id,_that.itemId,_that.locationId,_that.quantity,_that.updatedAt);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(name: 'item_id')  String itemId, @JsonKey(name: 'location_id')  String locationId,  double quantity, @JsonKey(name: 'updated_at')  DateTime? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _StockLevel() when $default != null:
return $default(_that.id,_that.itemId,_that.locationId,_that.quantity,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StockLevel implements StockLevel {
  const _StockLevel({required this.id, @JsonKey(name: 'item_id') required this.itemId, @JsonKey(name: 'location_id') required this.locationId, this.quantity = 0, @JsonKey(name: 'updated_at') this.updatedAt});
  factory _StockLevel.fromJson(Map<String, dynamic> json) => _$StockLevelFromJson(json);

@override final  String id;
@override@JsonKey(name: 'item_id') final  String itemId;
@override@JsonKey(name: 'location_id') final  String locationId;
@override@JsonKey() final  double quantity;
@override@JsonKey(name: 'updated_at') final  DateTime? updatedAt;

/// Create a copy of StockLevel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StockLevelCopyWith<_StockLevel> get copyWith => __$StockLevelCopyWithImpl<_StockLevel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StockLevelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StockLevel&&(identical(other.id, id) || other.id == id)&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.locationId, locationId) || other.locationId == locationId)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,itemId,locationId,quantity,updatedAt);

@override
String toString() {
  return 'StockLevel(id: $id, itemId: $itemId, locationId: $locationId, quantity: $quantity, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$StockLevelCopyWith<$Res> implements $StockLevelCopyWith<$Res> {
  factory _$StockLevelCopyWith(_StockLevel value, $Res Function(_StockLevel) _then) = __$StockLevelCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(name: 'item_id') String itemId,@JsonKey(name: 'location_id') String locationId, double quantity,@JsonKey(name: 'updated_at') DateTime? updatedAt
});




}
/// @nodoc
class __$StockLevelCopyWithImpl<$Res>
    implements _$StockLevelCopyWith<$Res> {
  __$StockLevelCopyWithImpl(this._self, this._then);

  final _StockLevel _self;
  final $Res Function(_StockLevel) _then;

/// Create a copy of StockLevel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? itemId = null,Object? locationId = null,Object? quantity = null,Object? updatedAt = freezed,}) {
  return _then(_StockLevel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String,locationId: null == locationId ? _self.locationId : locationId // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}


/// @nodoc
mixin _$StockAdjustmentCreate {

@JsonKey(name: 'store_id') String get storeId;@JsonKey(name: 'item_id') String get itemId;@JsonKey(name: 'location_id') String get locationId;@JsonKey(name: 'quantity_change') double get quantityChange; String get reason; String? get notes;
/// Create a copy of StockAdjustmentCreate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StockAdjustmentCreateCopyWith<StockAdjustmentCreate> get copyWith => _$StockAdjustmentCreateCopyWithImpl<StockAdjustmentCreate>(this as StockAdjustmentCreate, _$identity);

  /// Serializes this StockAdjustmentCreate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StockAdjustmentCreate&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.locationId, locationId) || other.locationId == locationId)&&(identical(other.quantityChange, quantityChange) || other.quantityChange == quantityChange)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.notes, notes) || other.notes == notes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,storeId,itemId,locationId,quantityChange,reason,notes);

@override
String toString() {
  return 'StockAdjustmentCreate(storeId: $storeId, itemId: $itemId, locationId: $locationId, quantityChange: $quantityChange, reason: $reason, notes: $notes)';
}


}

/// @nodoc
abstract mixin class $StockAdjustmentCreateCopyWith<$Res>  {
  factory $StockAdjustmentCreateCopyWith(StockAdjustmentCreate value, $Res Function(StockAdjustmentCreate) _then) = _$StockAdjustmentCreateCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'store_id') String storeId,@JsonKey(name: 'item_id') String itemId,@JsonKey(name: 'location_id') String locationId,@JsonKey(name: 'quantity_change') double quantityChange, String reason, String? notes
});




}
/// @nodoc
class _$StockAdjustmentCreateCopyWithImpl<$Res>
    implements $StockAdjustmentCreateCopyWith<$Res> {
  _$StockAdjustmentCreateCopyWithImpl(this._self, this._then);

  final StockAdjustmentCreate _self;
  final $Res Function(StockAdjustmentCreate) _then;

/// Create a copy of StockAdjustmentCreate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? storeId = null,Object? itemId = null,Object? locationId = null,Object? quantityChange = null,Object? reason = null,Object? notes = freezed,}) {
  return _then(_self.copyWith(
storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String,locationId: null == locationId ? _self.locationId : locationId // ignore: cast_nullable_to_non_nullable
as String,quantityChange: null == quantityChange ? _self.quantityChange : quantityChange // ignore: cast_nullable_to_non_nullable
as double,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [StockAdjustmentCreate].
extension StockAdjustmentCreatePatterns on StockAdjustmentCreate {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StockAdjustmentCreate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StockAdjustmentCreate() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StockAdjustmentCreate value)  $default,){
final _that = this;
switch (_that) {
case _StockAdjustmentCreate():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StockAdjustmentCreate value)?  $default,){
final _that = this;
switch (_that) {
case _StockAdjustmentCreate() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'store_id')  String storeId, @JsonKey(name: 'item_id')  String itemId, @JsonKey(name: 'location_id')  String locationId, @JsonKey(name: 'quantity_change')  double quantityChange,  String reason,  String? notes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StockAdjustmentCreate() when $default != null:
return $default(_that.storeId,_that.itemId,_that.locationId,_that.quantityChange,_that.reason,_that.notes);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'store_id')  String storeId, @JsonKey(name: 'item_id')  String itemId, @JsonKey(name: 'location_id')  String locationId, @JsonKey(name: 'quantity_change')  double quantityChange,  String reason,  String? notes)  $default,) {final _that = this;
switch (_that) {
case _StockAdjustmentCreate():
return $default(_that.storeId,_that.itemId,_that.locationId,_that.quantityChange,_that.reason,_that.notes);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'store_id')  String storeId, @JsonKey(name: 'item_id')  String itemId, @JsonKey(name: 'location_id')  String locationId, @JsonKey(name: 'quantity_change')  double quantityChange,  String reason,  String? notes)?  $default,) {final _that = this;
switch (_that) {
case _StockAdjustmentCreate() when $default != null:
return $default(_that.storeId,_that.itemId,_that.locationId,_that.quantityChange,_that.reason,_that.notes);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StockAdjustmentCreate implements StockAdjustmentCreate {
  const _StockAdjustmentCreate({@JsonKey(name: 'store_id') required this.storeId, @JsonKey(name: 'item_id') required this.itemId, @JsonKey(name: 'location_id') required this.locationId, @JsonKey(name: 'quantity_change') required this.quantityChange, required this.reason, this.notes});
  factory _StockAdjustmentCreate.fromJson(Map<String, dynamic> json) => _$StockAdjustmentCreateFromJson(json);

@override@JsonKey(name: 'store_id') final  String storeId;
@override@JsonKey(name: 'item_id') final  String itemId;
@override@JsonKey(name: 'location_id') final  String locationId;
@override@JsonKey(name: 'quantity_change') final  double quantityChange;
@override final  String reason;
@override final  String? notes;

/// Create a copy of StockAdjustmentCreate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StockAdjustmentCreateCopyWith<_StockAdjustmentCreate> get copyWith => __$StockAdjustmentCreateCopyWithImpl<_StockAdjustmentCreate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StockAdjustmentCreateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StockAdjustmentCreate&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.locationId, locationId) || other.locationId == locationId)&&(identical(other.quantityChange, quantityChange) || other.quantityChange == quantityChange)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.notes, notes) || other.notes == notes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,storeId,itemId,locationId,quantityChange,reason,notes);

@override
String toString() {
  return 'StockAdjustmentCreate(storeId: $storeId, itemId: $itemId, locationId: $locationId, quantityChange: $quantityChange, reason: $reason, notes: $notes)';
}


}

/// @nodoc
abstract mixin class _$StockAdjustmentCreateCopyWith<$Res> implements $StockAdjustmentCreateCopyWith<$Res> {
  factory _$StockAdjustmentCreateCopyWith(_StockAdjustmentCreate value, $Res Function(_StockAdjustmentCreate) _then) = __$StockAdjustmentCreateCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'store_id') String storeId,@JsonKey(name: 'item_id') String itemId,@JsonKey(name: 'location_id') String locationId,@JsonKey(name: 'quantity_change') double quantityChange, String reason, String? notes
});




}
/// @nodoc
class __$StockAdjustmentCreateCopyWithImpl<$Res>
    implements _$StockAdjustmentCreateCopyWith<$Res> {
  __$StockAdjustmentCreateCopyWithImpl(this._self, this._then);

  final _StockAdjustmentCreate _self;
  final $Res Function(_StockAdjustmentCreate) _then;

/// Create a copy of StockAdjustmentCreate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? storeId = null,Object? itemId = null,Object? locationId = null,Object? quantityChange = null,Object? reason = null,Object? notes = freezed,}) {
  return _then(_StockAdjustmentCreate(
storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String,locationId: null == locationId ? _self.locationId : locationId // ignore: cast_nullable_to_non_nullable
as String,quantityChange: null == quantityChange ? _self.quantityChange : quantityChange // ignore: cast_nullable_to_non_nullable
as double,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$StockAdjustmentResponse {

 String get id;@JsonKey(name: 'store_id') String get storeId;@JsonKey(name: 'item_id') String get itemId;@JsonKey(name: 'location_id') String get locationId;@JsonKey(name: 'quantity_change') double get quantityChange; String get reason; String? get notes;@JsonKey(name: 'created_at') DateTime? get createdAt;
/// Create a copy of StockAdjustmentResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StockAdjustmentResponseCopyWith<StockAdjustmentResponse> get copyWith => _$StockAdjustmentResponseCopyWithImpl<StockAdjustmentResponse>(this as StockAdjustmentResponse, _$identity);

  /// Serializes this StockAdjustmentResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StockAdjustmentResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.locationId, locationId) || other.locationId == locationId)&&(identical(other.quantityChange, quantityChange) || other.quantityChange == quantityChange)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,storeId,itemId,locationId,quantityChange,reason,notes,createdAt);

@override
String toString() {
  return 'StockAdjustmentResponse(id: $id, storeId: $storeId, itemId: $itemId, locationId: $locationId, quantityChange: $quantityChange, reason: $reason, notes: $notes, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $StockAdjustmentResponseCopyWith<$Res>  {
  factory $StockAdjustmentResponseCopyWith(StockAdjustmentResponse value, $Res Function(StockAdjustmentResponse) _then) = _$StockAdjustmentResponseCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(name: 'store_id') String storeId,@JsonKey(name: 'item_id') String itemId,@JsonKey(name: 'location_id') String locationId,@JsonKey(name: 'quantity_change') double quantityChange, String reason, String? notes,@JsonKey(name: 'created_at') DateTime? createdAt
});




}
/// @nodoc
class _$StockAdjustmentResponseCopyWithImpl<$Res>
    implements $StockAdjustmentResponseCopyWith<$Res> {
  _$StockAdjustmentResponseCopyWithImpl(this._self, this._then);

  final StockAdjustmentResponse _self;
  final $Res Function(StockAdjustmentResponse) _then;

/// Create a copy of StockAdjustmentResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? storeId = null,Object? itemId = null,Object? locationId = null,Object? quantityChange = null,Object? reason = null,Object? notes = freezed,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String,locationId: null == locationId ? _self.locationId : locationId // ignore: cast_nullable_to_non_nullable
as String,quantityChange: null == quantityChange ? _self.quantityChange : quantityChange // ignore: cast_nullable_to_non_nullable
as double,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [StockAdjustmentResponse].
extension StockAdjustmentResponsePatterns on StockAdjustmentResponse {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StockAdjustmentResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StockAdjustmentResponse() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StockAdjustmentResponse value)  $default,){
final _that = this;
switch (_that) {
case _StockAdjustmentResponse():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StockAdjustmentResponse value)?  $default,){
final _that = this;
switch (_that) {
case _StockAdjustmentResponse() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'store_id')  String storeId, @JsonKey(name: 'item_id')  String itemId, @JsonKey(name: 'location_id')  String locationId, @JsonKey(name: 'quantity_change')  double quantityChange,  String reason,  String? notes, @JsonKey(name: 'created_at')  DateTime? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StockAdjustmentResponse() when $default != null:
return $default(_that.id,_that.storeId,_that.itemId,_that.locationId,_that.quantityChange,_that.reason,_that.notes,_that.createdAt);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'store_id')  String storeId, @JsonKey(name: 'item_id')  String itemId, @JsonKey(name: 'location_id')  String locationId, @JsonKey(name: 'quantity_change')  double quantityChange,  String reason,  String? notes, @JsonKey(name: 'created_at')  DateTime? createdAt)  $default,) {final _that = this;
switch (_that) {
case _StockAdjustmentResponse():
return $default(_that.id,_that.storeId,_that.itemId,_that.locationId,_that.quantityChange,_that.reason,_that.notes,_that.createdAt);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(name: 'store_id')  String storeId, @JsonKey(name: 'item_id')  String itemId, @JsonKey(name: 'location_id')  String locationId, @JsonKey(name: 'quantity_change')  double quantityChange,  String reason,  String? notes, @JsonKey(name: 'created_at')  DateTime? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _StockAdjustmentResponse() when $default != null:
return $default(_that.id,_that.storeId,_that.itemId,_that.locationId,_that.quantityChange,_that.reason,_that.notes,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StockAdjustmentResponse implements StockAdjustmentResponse {
  const _StockAdjustmentResponse({required this.id, @JsonKey(name: 'store_id') required this.storeId, @JsonKey(name: 'item_id') required this.itemId, @JsonKey(name: 'location_id') required this.locationId, @JsonKey(name: 'quantity_change') required this.quantityChange, required this.reason, this.notes, @JsonKey(name: 'created_at') this.createdAt});
  factory _StockAdjustmentResponse.fromJson(Map<String, dynamic> json) => _$StockAdjustmentResponseFromJson(json);

@override final  String id;
@override@JsonKey(name: 'store_id') final  String storeId;
@override@JsonKey(name: 'item_id') final  String itemId;
@override@JsonKey(name: 'location_id') final  String locationId;
@override@JsonKey(name: 'quantity_change') final  double quantityChange;
@override final  String reason;
@override final  String? notes;
@override@JsonKey(name: 'created_at') final  DateTime? createdAt;

/// Create a copy of StockAdjustmentResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StockAdjustmentResponseCopyWith<_StockAdjustmentResponse> get copyWith => __$StockAdjustmentResponseCopyWithImpl<_StockAdjustmentResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StockAdjustmentResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StockAdjustmentResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.locationId, locationId) || other.locationId == locationId)&&(identical(other.quantityChange, quantityChange) || other.quantityChange == quantityChange)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,storeId,itemId,locationId,quantityChange,reason,notes,createdAt);

@override
String toString() {
  return 'StockAdjustmentResponse(id: $id, storeId: $storeId, itemId: $itemId, locationId: $locationId, quantityChange: $quantityChange, reason: $reason, notes: $notes, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$StockAdjustmentResponseCopyWith<$Res> implements $StockAdjustmentResponseCopyWith<$Res> {
  factory _$StockAdjustmentResponseCopyWith(_StockAdjustmentResponse value, $Res Function(_StockAdjustmentResponse) _then) = __$StockAdjustmentResponseCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(name: 'store_id') String storeId,@JsonKey(name: 'item_id') String itemId,@JsonKey(name: 'location_id') String locationId,@JsonKey(name: 'quantity_change') double quantityChange, String reason, String? notes,@JsonKey(name: 'created_at') DateTime? createdAt
});




}
/// @nodoc
class __$StockAdjustmentResponseCopyWithImpl<$Res>
    implements _$StockAdjustmentResponseCopyWith<$Res> {
  __$StockAdjustmentResponseCopyWithImpl(this._self, this._then);

  final _StockAdjustmentResponse _self;
  final $Res Function(_StockAdjustmentResponse) _then;

/// Create a copy of StockAdjustmentResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? storeId = null,Object? itemId = null,Object? locationId = null,Object? quantityChange = null,Object? reason = null,Object? notes = freezed,Object? createdAt = freezed,}) {
  return _then(_StockAdjustmentResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String,locationId: null == locationId ? _self.locationId : locationId // ignore: cast_nullable_to_non_nullable
as String,quantityChange: null == quantityChange ? _self.quantityChange : quantityChange // ignore: cast_nullable_to_non_nullable
as double,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}


/// @nodoc
mixin _$InventoryUnit {

 String get id;@JsonKey(name: 'store_id') String get storeId; String get name; String get abbreviation;@JsonKey(name: 'conversion_factor') double get conversionFactor;
/// Create a copy of InventoryUnit
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InventoryUnitCopyWith<InventoryUnit> get copyWith => _$InventoryUnitCopyWithImpl<InventoryUnit>(this as InventoryUnit, _$identity);

  /// Serializes this InventoryUnit to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InventoryUnit&&(identical(other.id, id) || other.id == id)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.name, name) || other.name == name)&&(identical(other.abbreviation, abbreviation) || other.abbreviation == abbreviation)&&(identical(other.conversionFactor, conversionFactor) || other.conversionFactor == conversionFactor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,storeId,name,abbreviation,conversionFactor);

@override
String toString() {
  return 'InventoryUnit(id: $id, storeId: $storeId, name: $name, abbreviation: $abbreviation, conversionFactor: $conversionFactor)';
}


}

/// @nodoc
abstract mixin class $InventoryUnitCopyWith<$Res>  {
  factory $InventoryUnitCopyWith(InventoryUnit value, $Res Function(InventoryUnit) _then) = _$InventoryUnitCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(name: 'store_id') String storeId, String name, String abbreviation,@JsonKey(name: 'conversion_factor') double conversionFactor
});




}
/// @nodoc
class _$InventoryUnitCopyWithImpl<$Res>
    implements $InventoryUnitCopyWith<$Res> {
  _$InventoryUnitCopyWithImpl(this._self, this._then);

  final InventoryUnit _self;
  final $Res Function(InventoryUnit) _then;

/// Create a copy of InventoryUnit
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? storeId = null,Object? name = null,Object? abbreviation = null,Object? conversionFactor = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,abbreviation: null == abbreviation ? _self.abbreviation : abbreviation // ignore: cast_nullable_to_non_nullable
as String,conversionFactor: null == conversionFactor ? _self.conversionFactor : conversionFactor // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [InventoryUnit].
extension InventoryUnitPatterns on InventoryUnit {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InventoryUnit value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InventoryUnit() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InventoryUnit value)  $default,){
final _that = this;
switch (_that) {
case _InventoryUnit():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InventoryUnit value)?  $default,){
final _that = this;
switch (_that) {
case _InventoryUnit() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'store_id')  String storeId,  String name,  String abbreviation, @JsonKey(name: 'conversion_factor')  double conversionFactor)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InventoryUnit() when $default != null:
return $default(_that.id,_that.storeId,_that.name,_that.abbreviation,_that.conversionFactor);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'store_id')  String storeId,  String name,  String abbreviation, @JsonKey(name: 'conversion_factor')  double conversionFactor)  $default,) {final _that = this;
switch (_that) {
case _InventoryUnit():
return $default(_that.id,_that.storeId,_that.name,_that.abbreviation,_that.conversionFactor);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(name: 'store_id')  String storeId,  String name,  String abbreviation, @JsonKey(name: 'conversion_factor')  double conversionFactor)?  $default,) {final _that = this;
switch (_that) {
case _InventoryUnit() when $default != null:
return $default(_that.id,_that.storeId,_that.name,_that.abbreviation,_that.conversionFactor);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InventoryUnit implements InventoryUnit {
  const _InventoryUnit({required this.id, @JsonKey(name: 'store_id') required this.storeId, required this.name, required this.abbreviation, @JsonKey(name: 'conversion_factor') this.conversionFactor = 1.0});
  factory _InventoryUnit.fromJson(Map<String, dynamic> json) => _$InventoryUnitFromJson(json);

@override final  String id;
@override@JsonKey(name: 'store_id') final  String storeId;
@override final  String name;
@override final  String abbreviation;
@override@JsonKey(name: 'conversion_factor') final  double conversionFactor;

/// Create a copy of InventoryUnit
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InventoryUnitCopyWith<_InventoryUnit> get copyWith => __$InventoryUnitCopyWithImpl<_InventoryUnit>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InventoryUnitToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InventoryUnit&&(identical(other.id, id) || other.id == id)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.name, name) || other.name == name)&&(identical(other.abbreviation, abbreviation) || other.abbreviation == abbreviation)&&(identical(other.conversionFactor, conversionFactor) || other.conversionFactor == conversionFactor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,storeId,name,abbreviation,conversionFactor);

@override
String toString() {
  return 'InventoryUnit(id: $id, storeId: $storeId, name: $name, abbreviation: $abbreviation, conversionFactor: $conversionFactor)';
}


}

/// @nodoc
abstract mixin class _$InventoryUnitCopyWith<$Res> implements $InventoryUnitCopyWith<$Res> {
  factory _$InventoryUnitCopyWith(_InventoryUnit value, $Res Function(_InventoryUnit) _then) = __$InventoryUnitCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(name: 'store_id') String storeId, String name, String abbreviation,@JsonKey(name: 'conversion_factor') double conversionFactor
});




}
/// @nodoc
class __$InventoryUnitCopyWithImpl<$Res>
    implements _$InventoryUnitCopyWith<$Res> {
  __$InventoryUnitCopyWithImpl(this._self, this._then);

  final _InventoryUnit _self;
  final $Res Function(_InventoryUnit) _then;

/// Create a copy of InventoryUnit
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? storeId = null,Object? name = null,Object? abbreviation = null,Object? conversionFactor = null,}) {
  return _then(_InventoryUnit(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,abbreviation: null == abbreviation ? _self.abbreviation : abbreviation // ignore: cast_nullable_to_non_nullable
as String,conversionFactor: null == conversionFactor ? _self.conversionFactor : conversionFactor // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}


/// @nodoc
mixin _$InventoryLocation {

 String get id;@JsonKey(name: 'store_id') String get storeId; String get name; String? get description;@JsonKey(name: 'is_active') bool get isActive;@JsonKey(name: 'created_at') DateTime? get createdAt;
/// Create a copy of InventoryLocation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InventoryLocationCopyWith<InventoryLocation> get copyWith => _$InventoryLocationCopyWithImpl<InventoryLocation>(this as InventoryLocation, _$identity);

  /// Serializes this InventoryLocation to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InventoryLocation&&(identical(other.id, id) || other.id == id)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,storeId,name,description,isActive,createdAt);

@override
String toString() {
  return 'InventoryLocation(id: $id, storeId: $storeId, name: $name, description: $description, isActive: $isActive, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $InventoryLocationCopyWith<$Res>  {
  factory $InventoryLocationCopyWith(InventoryLocation value, $Res Function(InventoryLocation) _then) = _$InventoryLocationCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(name: 'store_id') String storeId, String name, String? description,@JsonKey(name: 'is_active') bool isActive,@JsonKey(name: 'created_at') DateTime? createdAt
});




}
/// @nodoc
class _$InventoryLocationCopyWithImpl<$Res>
    implements $InventoryLocationCopyWith<$Res> {
  _$InventoryLocationCopyWithImpl(this._self, this._then);

  final InventoryLocation _self;
  final $Res Function(InventoryLocation) _then;

/// Create a copy of InventoryLocation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? storeId = null,Object? name = null,Object? description = freezed,Object? isActive = null,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [InventoryLocation].
extension InventoryLocationPatterns on InventoryLocation {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InventoryLocation value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InventoryLocation() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InventoryLocation value)  $default,){
final _that = this;
switch (_that) {
case _InventoryLocation():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InventoryLocation value)?  $default,){
final _that = this;
switch (_that) {
case _InventoryLocation() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'store_id')  String storeId,  String name,  String? description, @JsonKey(name: 'is_active')  bool isActive, @JsonKey(name: 'created_at')  DateTime? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InventoryLocation() when $default != null:
return $default(_that.id,_that.storeId,_that.name,_that.description,_that.isActive,_that.createdAt);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'store_id')  String storeId,  String name,  String? description, @JsonKey(name: 'is_active')  bool isActive, @JsonKey(name: 'created_at')  DateTime? createdAt)  $default,) {final _that = this;
switch (_that) {
case _InventoryLocation():
return $default(_that.id,_that.storeId,_that.name,_that.description,_that.isActive,_that.createdAt);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(name: 'store_id')  String storeId,  String name,  String? description, @JsonKey(name: 'is_active')  bool isActive, @JsonKey(name: 'created_at')  DateTime? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _InventoryLocation() when $default != null:
return $default(_that.id,_that.storeId,_that.name,_that.description,_that.isActive,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InventoryLocation implements InventoryLocation {
  const _InventoryLocation({required this.id, @JsonKey(name: 'store_id') required this.storeId, required this.name, this.description, @JsonKey(name: 'is_active') this.isActive = true, @JsonKey(name: 'created_at') this.createdAt});
  factory _InventoryLocation.fromJson(Map<String, dynamic> json) => _$InventoryLocationFromJson(json);

@override final  String id;
@override@JsonKey(name: 'store_id') final  String storeId;
@override final  String name;
@override final  String? description;
@override@JsonKey(name: 'is_active') final  bool isActive;
@override@JsonKey(name: 'created_at') final  DateTime? createdAt;

/// Create a copy of InventoryLocation
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InventoryLocationCopyWith<_InventoryLocation> get copyWith => __$InventoryLocationCopyWithImpl<_InventoryLocation>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InventoryLocationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InventoryLocation&&(identical(other.id, id) || other.id == id)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,storeId,name,description,isActive,createdAt);

@override
String toString() {
  return 'InventoryLocation(id: $id, storeId: $storeId, name: $name, description: $description, isActive: $isActive, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$InventoryLocationCopyWith<$Res> implements $InventoryLocationCopyWith<$Res> {
  factory _$InventoryLocationCopyWith(_InventoryLocation value, $Res Function(_InventoryLocation) _then) = __$InventoryLocationCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(name: 'store_id') String storeId, String name, String? description,@JsonKey(name: 'is_active') bool isActive,@JsonKey(name: 'created_at') DateTime? createdAt
});




}
/// @nodoc
class __$InventoryLocationCopyWithImpl<$Res>
    implements _$InventoryLocationCopyWith<$Res> {
  __$InventoryLocationCopyWithImpl(this._self, this._then);

  final _InventoryLocation _self;
  final $Res Function(_InventoryLocation) _then;

/// Create a copy of InventoryLocation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? storeId = null,Object? name = null,Object? description = freezed,Object? isActive = null,Object? createdAt = freezed,}) {
  return _then(_InventoryLocation(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}


/// @nodoc
mixin _$InventoryUnitCreate {

@JsonKey(name: 'store_id') String get storeId; String get name; String get abbreviation;@JsonKey(name: 'conversion_factor') double get conversionFactor;
/// Create a copy of InventoryUnitCreate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InventoryUnitCreateCopyWith<InventoryUnitCreate> get copyWith => _$InventoryUnitCreateCopyWithImpl<InventoryUnitCreate>(this as InventoryUnitCreate, _$identity);

  /// Serializes this InventoryUnitCreate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InventoryUnitCreate&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.name, name) || other.name == name)&&(identical(other.abbreviation, abbreviation) || other.abbreviation == abbreviation)&&(identical(other.conversionFactor, conversionFactor) || other.conversionFactor == conversionFactor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,storeId,name,abbreviation,conversionFactor);

@override
String toString() {
  return 'InventoryUnitCreate(storeId: $storeId, name: $name, abbreviation: $abbreviation, conversionFactor: $conversionFactor)';
}


}

/// @nodoc
abstract mixin class $InventoryUnitCreateCopyWith<$Res>  {
  factory $InventoryUnitCreateCopyWith(InventoryUnitCreate value, $Res Function(InventoryUnitCreate) _then) = _$InventoryUnitCreateCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'store_id') String storeId, String name, String abbreviation,@JsonKey(name: 'conversion_factor') double conversionFactor
});




}
/// @nodoc
class _$InventoryUnitCreateCopyWithImpl<$Res>
    implements $InventoryUnitCreateCopyWith<$Res> {
  _$InventoryUnitCreateCopyWithImpl(this._self, this._then);

  final InventoryUnitCreate _self;
  final $Res Function(InventoryUnitCreate) _then;

/// Create a copy of InventoryUnitCreate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? storeId = null,Object? name = null,Object? abbreviation = null,Object? conversionFactor = null,}) {
  return _then(_self.copyWith(
storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,abbreviation: null == abbreviation ? _self.abbreviation : abbreviation // ignore: cast_nullable_to_non_nullable
as String,conversionFactor: null == conversionFactor ? _self.conversionFactor : conversionFactor // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [InventoryUnitCreate].
extension InventoryUnitCreatePatterns on InventoryUnitCreate {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InventoryUnitCreate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InventoryUnitCreate() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InventoryUnitCreate value)  $default,){
final _that = this;
switch (_that) {
case _InventoryUnitCreate():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InventoryUnitCreate value)?  $default,){
final _that = this;
switch (_that) {
case _InventoryUnitCreate() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'store_id')  String storeId,  String name,  String abbreviation, @JsonKey(name: 'conversion_factor')  double conversionFactor)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InventoryUnitCreate() when $default != null:
return $default(_that.storeId,_that.name,_that.abbreviation,_that.conversionFactor);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'store_id')  String storeId,  String name,  String abbreviation, @JsonKey(name: 'conversion_factor')  double conversionFactor)  $default,) {final _that = this;
switch (_that) {
case _InventoryUnitCreate():
return $default(_that.storeId,_that.name,_that.abbreviation,_that.conversionFactor);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'store_id')  String storeId,  String name,  String abbreviation, @JsonKey(name: 'conversion_factor')  double conversionFactor)?  $default,) {final _that = this;
switch (_that) {
case _InventoryUnitCreate() when $default != null:
return $default(_that.storeId,_that.name,_that.abbreviation,_that.conversionFactor);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InventoryUnitCreate implements InventoryUnitCreate {
  const _InventoryUnitCreate({@JsonKey(name: 'store_id') required this.storeId, required this.name, required this.abbreviation, @JsonKey(name: 'conversion_factor') this.conversionFactor = 1.0});
  factory _InventoryUnitCreate.fromJson(Map<String, dynamic> json) => _$InventoryUnitCreateFromJson(json);

@override@JsonKey(name: 'store_id') final  String storeId;
@override final  String name;
@override final  String abbreviation;
@override@JsonKey(name: 'conversion_factor') final  double conversionFactor;

/// Create a copy of InventoryUnitCreate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InventoryUnitCreateCopyWith<_InventoryUnitCreate> get copyWith => __$InventoryUnitCreateCopyWithImpl<_InventoryUnitCreate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InventoryUnitCreateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InventoryUnitCreate&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.name, name) || other.name == name)&&(identical(other.abbreviation, abbreviation) || other.abbreviation == abbreviation)&&(identical(other.conversionFactor, conversionFactor) || other.conversionFactor == conversionFactor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,storeId,name,abbreviation,conversionFactor);

@override
String toString() {
  return 'InventoryUnitCreate(storeId: $storeId, name: $name, abbreviation: $abbreviation, conversionFactor: $conversionFactor)';
}


}

/// @nodoc
abstract mixin class _$InventoryUnitCreateCopyWith<$Res> implements $InventoryUnitCreateCopyWith<$Res> {
  factory _$InventoryUnitCreateCopyWith(_InventoryUnitCreate value, $Res Function(_InventoryUnitCreate) _then) = __$InventoryUnitCreateCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'store_id') String storeId, String name, String abbreviation,@JsonKey(name: 'conversion_factor') double conversionFactor
});




}
/// @nodoc
class __$InventoryUnitCreateCopyWithImpl<$Res>
    implements _$InventoryUnitCreateCopyWith<$Res> {
  __$InventoryUnitCreateCopyWithImpl(this._self, this._then);

  final _InventoryUnitCreate _self;
  final $Res Function(_InventoryUnitCreate) _then;

/// Create a copy of InventoryUnitCreate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? storeId = null,Object? name = null,Object? abbreviation = null,Object? conversionFactor = null,}) {
  return _then(_InventoryUnitCreate(
storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,abbreviation: null == abbreviation ? _self.abbreviation : abbreviation // ignore: cast_nullable_to_non_nullable
as String,conversionFactor: null == conversionFactor ? _self.conversionFactor : conversionFactor // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}


/// @nodoc
mixin _$InventoryLocationCreate {

@JsonKey(name: 'store_id') String get storeId; String get name; String? get description;@JsonKey(name: 'is_active') bool get isActive;
/// Create a copy of InventoryLocationCreate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InventoryLocationCreateCopyWith<InventoryLocationCreate> get copyWith => _$InventoryLocationCreateCopyWithImpl<InventoryLocationCreate>(this as InventoryLocationCreate, _$identity);

  /// Serializes this InventoryLocationCreate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InventoryLocationCreate&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,storeId,name,description,isActive);

@override
String toString() {
  return 'InventoryLocationCreate(storeId: $storeId, name: $name, description: $description, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class $InventoryLocationCreateCopyWith<$Res>  {
  factory $InventoryLocationCreateCopyWith(InventoryLocationCreate value, $Res Function(InventoryLocationCreate) _then) = _$InventoryLocationCreateCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'store_id') String storeId, String name, String? description,@JsonKey(name: 'is_active') bool isActive
});




}
/// @nodoc
class _$InventoryLocationCreateCopyWithImpl<$Res>
    implements $InventoryLocationCreateCopyWith<$Res> {
  _$InventoryLocationCreateCopyWithImpl(this._self, this._then);

  final InventoryLocationCreate _self;
  final $Res Function(InventoryLocationCreate) _then;

/// Create a copy of InventoryLocationCreate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? storeId = null,Object? name = null,Object? description = freezed,Object? isActive = null,}) {
  return _then(_self.copyWith(
storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [InventoryLocationCreate].
extension InventoryLocationCreatePatterns on InventoryLocationCreate {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InventoryLocationCreate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InventoryLocationCreate() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InventoryLocationCreate value)  $default,){
final _that = this;
switch (_that) {
case _InventoryLocationCreate():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InventoryLocationCreate value)?  $default,){
final _that = this;
switch (_that) {
case _InventoryLocationCreate() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'store_id')  String storeId,  String name,  String? description, @JsonKey(name: 'is_active')  bool isActive)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InventoryLocationCreate() when $default != null:
return $default(_that.storeId,_that.name,_that.description,_that.isActive);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'store_id')  String storeId,  String name,  String? description, @JsonKey(name: 'is_active')  bool isActive)  $default,) {final _that = this;
switch (_that) {
case _InventoryLocationCreate():
return $default(_that.storeId,_that.name,_that.description,_that.isActive);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'store_id')  String storeId,  String name,  String? description, @JsonKey(name: 'is_active')  bool isActive)?  $default,) {final _that = this;
switch (_that) {
case _InventoryLocationCreate() when $default != null:
return $default(_that.storeId,_that.name,_that.description,_that.isActive);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InventoryLocationCreate implements InventoryLocationCreate {
  const _InventoryLocationCreate({@JsonKey(name: 'store_id') required this.storeId, required this.name, this.description, @JsonKey(name: 'is_active') this.isActive = true});
  factory _InventoryLocationCreate.fromJson(Map<String, dynamic> json) => _$InventoryLocationCreateFromJson(json);

@override@JsonKey(name: 'store_id') final  String storeId;
@override final  String name;
@override final  String? description;
@override@JsonKey(name: 'is_active') final  bool isActive;

/// Create a copy of InventoryLocationCreate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InventoryLocationCreateCopyWith<_InventoryLocationCreate> get copyWith => __$InventoryLocationCreateCopyWithImpl<_InventoryLocationCreate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InventoryLocationCreateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InventoryLocationCreate&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,storeId,name,description,isActive);

@override
String toString() {
  return 'InventoryLocationCreate(storeId: $storeId, name: $name, description: $description, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class _$InventoryLocationCreateCopyWith<$Res> implements $InventoryLocationCreateCopyWith<$Res> {
  factory _$InventoryLocationCreateCopyWith(_InventoryLocationCreate value, $Res Function(_InventoryLocationCreate) _then) = __$InventoryLocationCreateCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'store_id') String storeId, String name, String? description,@JsonKey(name: 'is_active') bool isActive
});




}
/// @nodoc
class __$InventoryLocationCreateCopyWithImpl<$Res>
    implements _$InventoryLocationCreateCopyWith<$Res> {
  __$InventoryLocationCreateCopyWithImpl(this._self, this._then);

  final _InventoryLocationCreate _self;
  final $Res Function(_InventoryLocationCreate) _then;

/// Create a copy of InventoryLocationCreate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? storeId = null,Object? name = null,Object? description = freezed,Object? isActive = null,}) {
  return _then(_InventoryLocationCreate(
storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$ItemAvailabilityUpdate {

@JsonKey(name: 'is_active') bool get isActive;
/// Create a copy of ItemAvailabilityUpdate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ItemAvailabilityUpdateCopyWith<ItemAvailabilityUpdate> get copyWith => _$ItemAvailabilityUpdateCopyWithImpl<ItemAvailabilityUpdate>(this as ItemAvailabilityUpdate, _$identity);

  /// Serializes this ItemAvailabilityUpdate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ItemAvailabilityUpdate&&(identical(other.isActive, isActive) || other.isActive == isActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isActive);

@override
String toString() {
  return 'ItemAvailabilityUpdate(isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class $ItemAvailabilityUpdateCopyWith<$Res>  {
  factory $ItemAvailabilityUpdateCopyWith(ItemAvailabilityUpdate value, $Res Function(ItemAvailabilityUpdate) _then) = _$ItemAvailabilityUpdateCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'is_active') bool isActive
});




}
/// @nodoc
class _$ItemAvailabilityUpdateCopyWithImpl<$Res>
    implements $ItemAvailabilityUpdateCopyWith<$Res> {
  _$ItemAvailabilityUpdateCopyWithImpl(this._self, this._then);

  final ItemAvailabilityUpdate _self;
  final $Res Function(ItemAvailabilityUpdate) _then;

/// Create a copy of ItemAvailabilityUpdate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isActive = null,}) {
  return _then(_self.copyWith(
isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ItemAvailabilityUpdate].
extension ItemAvailabilityUpdatePatterns on ItemAvailabilityUpdate {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ItemAvailabilityUpdate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ItemAvailabilityUpdate() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ItemAvailabilityUpdate value)  $default,){
final _that = this;
switch (_that) {
case _ItemAvailabilityUpdate():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ItemAvailabilityUpdate value)?  $default,){
final _that = this;
switch (_that) {
case _ItemAvailabilityUpdate() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'is_active')  bool isActive)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ItemAvailabilityUpdate() when $default != null:
return $default(_that.isActive);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'is_active')  bool isActive)  $default,) {final _that = this;
switch (_that) {
case _ItemAvailabilityUpdate():
return $default(_that.isActive);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'is_active')  bool isActive)?  $default,) {final _that = this;
switch (_that) {
case _ItemAvailabilityUpdate() when $default != null:
return $default(_that.isActive);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ItemAvailabilityUpdate implements ItemAvailabilityUpdate {
  const _ItemAvailabilityUpdate({@JsonKey(name: 'is_active') required this.isActive});
  factory _ItemAvailabilityUpdate.fromJson(Map<String, dynamic> json) => _$ItemAvailabilityUpdateFromJson(json);

@override@JsonKey(name: 'is_active') final  bool isActive;

/// Create a copy of ItemAvailabilityUpdate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ItemAvailabilityUpdateCopyWith<_ItemAvailabilityUpdate> get copyWith => __$ItemAvailabilityUpdateCopyWithImpl<_ItemAvailabilityUpdate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ItemAvailabilityUpdateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ItemAvailabilityUpdate&&(identical(other.isActive, isActive) || other.isActive == isActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isActive);

@override
String toString() {
  return 'ItemAvailabilityUpdate(isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class _$ItemAvailabilityUpdateCopyWith<$Res> implements $ItemAvailabilityUpdateCopyWith<$Res> {
  factory _$ItemAvailabilityUpdateCopyWith(_ItemAvailabilityUpdate value, $Res Function(_ItemAvailabilityUpdate) _then) = __$ItemAvailabilityUpdateCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'is_active') bool isActive
});




}
/// @nodoc
class __$ItemAvailabilityUpdateCopyWithImpl<$Res>
    implements _$ItemAvailabilityUpdateCopyWith<$Res> {
  __$ItemAvailabilityUpdateCopyWithImpl(this._self, this._then);

  final _ItemAvailabilityUpdate _self;
  final $Res Function(_ItemAvailabilityUpdate) _then;

/// Create a copy of ItemAvailabilityUpdate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isActive = null,}) {
  return _then(_ItemAvailabilityUpdate(
isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$RecipeIngredient {

 String get id;@JsonKey(name: 'recipe_id') String get recipeId;@JsonKey(name: 'ingredient_id') String get ingredientId; double get quantity;@JsonKey(name: 'unit_id') String? get unitId;
/// Create a copy of RecipeIngredient
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecipeIngredientCopyWith<RecipeIngredient> get copyWith => _$RecipeIngredientCopyWithImpl<RecipeIngredient>(this as RecipeIngredient, _$identity);

  /// Serializes this RecipeIngredient to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecipeIngredient&&(identical(other.id, id) || other.id == id)&&(identical(other.recipeId, recipeId) || other.recipeId == recipeId)&&(identical(other.ingredientId, ingredientId) || other.ingredientId == ingredientId)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.unitId, unitId) || other.unitId == unitId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,recipeId,ingredientId,quantity,unitId);

@override
String toString() {
  return 'RecipeIngredient(id: $id, recipeId: $recipeId, ingredientId: $ingredientId, quantity: $quantity, unitId: $unitId)';
}


}

/// @nodoc
abstract mixin class $RecipeIngredientCopyWith<$Res>  {
  factory $RecipeIngredientCopyWith(RecipeIngredient value, $Res Function(RecipeIngredient) _then) = _$RecipeIngredientCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(name: 'recipe_id') String recipeId,@JsonKey(name: 'ingredient_id') String ingredientId, double quantity,@JsonKey(name: 'unit_id') String? unitId
});




}
/// @nodoc
class _$RecipeIngredientCopyWithImpl<$Res>
    implements $RecipeIngredientCopyWith<$Res> {
  _$RecipeIngredientCopyWithImpl(this._self, this._then);

  final RecipeIngredient _self;
  final $Res Function(RecipeIngredient) _then;

/// Create a copy of RecipeIngredient
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? recipeId = null,Object? ingredientId = null,Object? quantity = null,Object? unitId = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,recipeId: null == recipeId ? _self.recipeId : recipeId // ignore: cast_nullable_to_non_nullable
as String,ingredientId: null == ingredientId ? _self.ingredientId : ingredientId // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double,unitId: freezed == unitId ? _self.unitId : unitId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [RecipeIngredient].
extension RecipeIngredientPatterns on RecipeIngredient {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RecipeIngredient value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RecipeIngredient() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RecipeIngredient value)  $default,){
final _that = this;
switch (_that) {
case _RecipeIngredient():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RecipeIngredient value)?  $default,){
final _that = this;
switch (_that) {
case _RecipeIngredient() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'recipe_id')  String recipeId, @JsonKey(name: 'ingredient_id')  String ingredientId,  double quantity, @JsonKey(name: 'unit_id')  String? unitId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RecipeIngredient() when $default != null:
return $default(_that.id,_that.recipeId,_that.ingredientId,_that.quantity,_that.unitId);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'recipe_id')  String recipeId, @JsonKey(name: 'ingredient_id')  String ingredientId,  double quantity, @JsonKey(name: 'unit_id')  String? unitId)  $default,) {final _that = this;
switch (_that) {
case _RecipeIngredient():
return $default(_that.id,_that.recipeId,_that.ingredientId,_that.quantity,_that.unitId);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(name: 'recipe_id')  String recipeId, @JsonKey(name: 'ingredient_id')  String ingredientId,  double quantity, @JsonKey(name: 'unit_id')  String? unitId)?  $default,) {final _that = this;
switch (_that) {
case _RecipeIngredient() when $default != null:
return $default(_that.id,_that.recipeId,_that.ingredientId,_that.quantity,_that.unitId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RecipeIngredient implements RecipeIngredient {
  const _RecipeIngredient({required this.id, @JsonKey(name: 'recipe_id') required this.recipeId, @JsonKey(name: 'ingredient_id') required this.ingredientId, required this.quantity, @JsonKey(name: 'unit_id') this.unitId});
  factory _RecipeIngredient.fromJson(Map<String, dynamic> json) => _$RecipeIngredientFromJson(json);

@override final  String id;
@override@JsonKey(name: 'recipe_id') final  String recipeId;
@override@JsonKey(name: 'ingredient_id') final  String ingredientId;
@override final  double quantity;
@override@JsonKey(name: 'unit_id') final  String? unitId;

/// Create a copy of RecipeIngredient
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RecipeIngredientCopyWith<_RecipeIngredient> get copyWith => __$RecipeIngredientCopyWithImpl<_RecipeIngredient>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RecipeIngredientToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RecipeIngredient&&(identical(other.id, id) || other.id == id)&&(identical(other.recipeId, recipeId) || other.recipeId == recipeId)&&(identical(other.ingredientId, ingredientId) || other.ingredientId == ingredientId)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.unitId, unitId) || other.unitId == unitId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,recipeId,ingredientId,quantity,unitId);

@override
String toString() {
  return 'RecipeIngredient(id: $id, recipeId: $recipeId, ingredientId: $ingredientId, quantity: $quantity, unitId: $unitId)';
}


}

/// @nodoc
abstract mixin class _$RecipeIngredientCopyWith<$Res> implements $RecipeIngredientCopyWith<$Res> {
  factory _$RecipeIngredientCopyWith(_RecipeIngredient value, $Res Function(_RecipeIngredient) _then) = __$RecipeIngredientCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(name: 'recipe_id') String recipeId,@JsonKey(name: 'ingredient_id') String ingredientId, double quantity,@JsonKey(name: 'unit_id') String? unitId
});




}
/// @nodoc
class __$RecipeIngredientCopyWithImpl<$Res>
    implements _$RecipeIngredientCopyWith<$Res> {
  __$RecipeIngredientCopyWithImpl(this._self, this._then);

  final _RecipeIngredient _self;
  final $Res Function(_RecipeIngredient) _then;

/// Create a copy of RecipeIngredient
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? recipeId = null,Object? ingredientId = null,Object? quantity = null,Object? unitId = freezed,}) {
  return _then(_RecipeIngredient(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,recipeId: null == recipeId ? _self.recipeId : recipeId // ignore: cast_nullable_to_non_nullable
as String,ingredientId: null == ingredientId ? _self.ingredientId : ingredientId // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double,unitId: freezed == unitId ? _self.unitId : unitId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$RecipeIngredientCreate {

@JsonKey(name: 'ingredient_id') String get ingredientId; double get quantity;@JsonKey(name: 'unit_id') String? get unitId;
/// Create a copy of RecipeIngredientCreate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecipeIngredientCreateCopyWith<RecipeIngredientCreate> get copyWith => _$RecipeIngredientCreateCopyWithImpl<RecipeIngredientCreate>(this as RecipeIngredientCreate, _$identity);

  /// Serializes this RecipeIngredientCreate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecipeIngredientCreate&&(identical(other.ingredientId, ingredientId) || other.ingredientId == ingredientId)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.unitId, unitId) || other.unitId == unitId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ingredientId,quantity,unitId);

@override
String toString() {
  return 'RecipeIngredientCreate(ingredientId: $ingredientId, quantity: $quantity, unitId: $unitId)';
}


}

/// @nodoc
abstract mixin class $RecipeIngredientCreateCopyWith<$Res>  {
  factory $RecipeIngredientCreateCopyWith(RecipeIngredientCreate value, $Res Function(RecipeIngredientCreate) _then) = _$RecipeIngredientCreateCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'ingredient_id') String ingredientId, double quantity,@JsonKey(name: 'unit_id') String? unitId
});




}
/// @nodoc
class _$RecipeIngredientCreateCopyWithImpl<$Res>
    implements $RecipeIngredientCreateCopyWith<$Res> {
  _$RecipeIngredientCreateCopyWithImpl(this._self, this._then);

  final RecipeIngredientCreate _self;
  final $Res Function(RecipeIngredientCreate) _then;

/// Create a copy of RecipeIngredientCreate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ingredientId = null,Object? quantity = null,Object? unitId = freezed,}) {
  return _then(_self.copyWith(
ingredientId: null == ingredientId ? _self.ingredientId : ingredientId // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double,unitId: freezed == unitId ? _self.unitId : unitId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [RecipeIngredientCreate].
extension RecipeIngredientCreatePatterns on RecipeIngredientCreate {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RecipeIngredientCreate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RecipeIngredientCreate() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RecipeIngredientCreate value)  $default,){
final _that = this;
switch (_that) {
case _RecipeIngredientCreate():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RecipeIngredientCreate value)?  $default,){
final _that = this;
switch (_that) {
case _RecipeIngredientCreate() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'ingredient_id')  String ingredientId,  double quantity, @JsonKey(name: 'unit_id')  String? unitId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RecipeIngredientCreate() when $default != null:
return $default(_that.ingredientId,_that.quantity,_that.unitId);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'ingredient_id')  String ingredientId,  double quantity, @JsonKey(name: 'unit_id')  String? unitId)  $default,) {final _that = this;
switch (_that) {
case _RecipeIngredientCreate():
return $default(_that.ingredientId,_that.quantity,_that.unitId);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'ingredient_id')  String ingredientId,  double quantity, @JsonKey(name: 'unit_id')  String? unitId)?  $default,) {final _that = this;
switch (_that) {
case _RecipeIngredientCreate() when $default != null:
return $default(_that.ingredientId,_that.quantity,_that.unitId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RecipeIngredientCreate implements RecipeIngredientCreate {
  const _RecipeIngredientCreate({@JsonKey(name: 'ingredient_id') required this.ingredientId, required this.quantity, @JsonKey(name: 'unit_id') this.unitId});
  factory _RecipeIngredientCreate.fromJson(Map<String, dynamic> json) => _$RecipeIngredientCreateFromJson(json);

@override@JsonKey(name: 'ingredient_id') final  String ingredientId;
@override final  double quantity;
@override@JsonKey(name: 'unit_id') final  String? unitId;

/// Create a copy of RecipeIngredientCreate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RecipeIngredientCreateCopyWith<_RecipeIngredientCreate> get copyWith => __$RecipeIngredientCreateCopyWithImpl<_RecipeIngredientCreate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RecipeIngredientCreateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RecipeIngredientCreate&&(identical(other.ingredientId, ingredientId) || other.ingredientId == ingredientId)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.unitId, unitId) || other.unitId == unitId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ingredientId,quantity,unitId);

@override
String toString() {
  return 'RecipeIngredientCreate(ingredientId: $ingredientId, quantity: $quantity, unitId: $unitId)';
}


}

/// @nodoc
abstract mixin class _$RecipeIngredientCreateCopyWith<$Res> implements $RecipeIngredientCreateCopyWith<$Res> {
  factory _$RecipeIngredientCreateCopyWith(_RecipeIngredientCreate value, $Res Function(_RecipeIngredientCreate) _then) = __$RecipeIngredientCreateCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'ingredient_id') String ingredientId, double quantity,@JsonKey(name: 'unit_id') String? unitId
});




}
/// @nodoc
class __$RecipeIngredientCreateCopyWithImpl<$Res>
    implements _$RecipeIngredientCreateCopyWith<$Res> {
  __$RecipeIngredientCreateCopyWithImpl(this._self, this._then);

  final _RecipeIngredientCreate _self;
  final $Res Function(_RecipeIngredientCreate) _then;

/// Create a copy of RecipeIngredientCreate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ingredientId = null,Object? quantity = null,Object? unitId = freezed,}) {
  return _then(_RecipeIngredientCreate(
ingredientId: null == ingredientId ? _self.ingredientId : ingredientId // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double,unitId: freezed == unitId ? _self.unitId : unitId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$Recipe {

 String get id;@JsonKey(name: 'store_id') String? get storeId;@JsonKey(name: 'product_id') String? get productId; String get name; String? get description;@JsonKey(name: 'yield_quantity') double get yieldQuantity;@JsonKey(name: 'wastage_percent') double get wastagePercent;@JsonKey(name: 'is_active') bool get isActive; List<RecipeIngredient> get lines;@JsonKey(name: 'created_at') DateTime? get createdAt;
/// Create a copy of Recipe
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecipeCopyWith<Recipe> get copyWith => _$RecipeCopyWithImpl<Recipe>(this as Recipe, _$identity);

  /// Serializes this Recipe to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Recipe&&(identical(other.id, id) || other.id == id)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.yieldQuantity, yieldQuantity) || other.yieldQuantity == yieldQuantity)&&(identical(other.wastagePercent, wastagePercent) || other.wastagePercent == wastagePercent)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&const DeepCollectionEquality().equals(other.lines, lines)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,storeId,productId,name,description,yieldQuantity,wastagePercent,isActive,const DeepCollectionEquality().hash(lines),createdAt);

@override
String toString() {
  return 'Recipe(id: $id, storeId: $storeId, productId: $productId, name: $name, description: $description, yieldQuantity: $yieldQuantity, wastagePercent: $wastagePercent, isActive: $isActive, lines: $lines, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $RecipeCopyWith<$Res>  {
  factory $RecipeCopyWith(Recipe value, $Res Function(Recipe) _then) = _$RecipeCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(name: 'store_id') String? storeId,@JsonKey(name: 'product_id') String? productId, String name, String? description,@JsonKey(name: 'yield_quantity') double yieldQuantity,@JsonKey(name: 'wastage_percent') double wastagePercent,@JsonKey(name: 'is_active') bool isActive, List<RecipeIngredient> lines,@JsonKey(name: 'created_at') DateTime? createdAt
});




}
/// @nodoc
class _$RecipeCopyWithImpl<$Res>
    implements $RecipeCopyWith<$Res> {
  _$RecipeCopyWithImpl(this._self, this._then);

  final Recipe _self;
  final $Res Function(Recipe) _then;

/// Create a copy of Recipe
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? storeId = freezed,Object? productId = freezed,Object? name = null,Object? description = freezed,Object? yieldQuantity = null,Object? wastagePercent = null,Object? isActive = null,Object? lines = null,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,storeId: freezed == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String?,productId: freezed == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,yieldQuantity: null == yieldQuantity ? _self.yieldQuantity : yieldQuantity // ignore: cast_nullable_to_non_nullable
as double,wastagePercent: null == wastagePercent ? _self.wastagePercent : wastagePercent // ignore: cast_nullable_to_non_nullable
as double,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,lines: null == lines ? _self.lines : lines // ignore: cast_nullable_to_non_nullable
as List<RecipeIngredient>,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [Recipe].
extension RecipePatterns on Recipe {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Recipe value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Recipe() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Recipe value)  $default,){
final _that = this;
switch (_that) {
case _Recipe():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Recipe value)?  $default,){
final _that = this;
switch (_that) {
case _Recipe() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'store_id')  String? storeId, @JsonKey(name: 'product_id')  String? productId,  String name,  String? description, @JsonKey(name: 'yield_quantity')  double yieldQuantity, @JsonKey(name: 'wastage_percent')  double wastagePercent, @JsonKey(name: 'is_active')  bool isActive,  List<RecipeIngredient> lines, @JsonKey(name: 'created_at')  DateTime? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Recipe() when $default != null:
return $default(_that.id,_that.storeId,_that.productId,_that.name,_that.description,_that.yieldQuantity,_that.wastagePercent,_that.isActive,_that.lines,_that.createdAt);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'store_id')  String? storeId, @JsonKey(name: 'product_id')  String? productId,  String name,  String? description, @JsonKey(name: 'yield_quantity')  double yieldQuantity, @JsonKey(name: 'wastage_percent')  double wastagePercent, @JsonKey(name: 'is_active')  bool isActive,  List<RecipeIngredient> lines, @JsonKey(name: 'created_at')  DateTime? createdAt)  $default,) {final _that = this;
switch (_that) {
case _Recipe():
return $default(_that.id,_that.storeId,_that.productId,_that.name,_that.description,_that.yieldQuantity,_that.wastagePercent,_that.isActive,_that.lines,_that.createdAt);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(name: 'store_id')  String? storeId, @JsonKey(name: 'product_id')  String? productId,  String name,  String? description, @JsonKey(name: 'yield_quantity')  double yieldQuantity, @JsonKey(name: 'wastage_percent')  double wastagePercent, @JsonKey(name: 'is_active')  bool isActive,  List<RecipeIngredient> lines, @JsonKey(name: 'created_at')  DateTime? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _Recipe() when $default != null:
return $default(_that.id,_that.storeId,_that.productId,_that.name,_that.description,_that.yieldQuantity,_that.wastagePercent,_that.isActive,_that.lines,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Recipe implements Recipe {
  const _Recipe({required this.id, @JsonKey(name: 'store_id') this.storeId, @JsonKey(name: 'product_id') this.productId, required this.name, this.description, @JsonKey(name: 'yield_quantity') this.yieldQuantity = 1.0, @JsonKey(name: 'wastage_percent') this.wastagePercent = 0, @JsonKey(name: 'is_active') this.isActive = true, final  List<RecipeIngredient> lines = const [], @JsonKey(name: 'created_at') this.createdAt}): _lines = lines;
  factory _Recipe.fromJson(Map<String, dynamic> json) => _$RecipeFromJson(json);

@override final  String id;
@override@JsonKey(name: 'store_id') final  String? storeId;
@override@JsonKey(name: 'product_id') final  String? productId;
@override final  String name;
@override final  String? description;
@override@JsonKey(name: 'yield_quantity') final  double yieldQuantity;
@override@JsonKey(name: 'wastage_percent') final  double wastagePercent;
@override@JsonKey(name: 'is_active') final  bool isActive;
 final  List<RecipeIngredient> _lines;
@override@JsonKey() List<RecipeIngredient> get lines {
  if (_lines is EqualUnmodifiableListView) return _lines;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_lines);
}

@override@JsonKey(name: 'created_at') final  DateTime? createdAt;

/// Create a copy of Recipe
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RecipeCopyWith<_Recipe> get copyWith => __$RecipeCopyWithImpl<_Recipe>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RecipeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Recipe&&(identical(other.id, id) || other.id == id)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.yieldQuantity, yieldQuantity) || other.yieldQuantity == yieldQuantity)&&(identical(other.wastagePercent, wastagePercent) || other.wastagePercent == wastagePercent)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&const DeepCollectionEquality().equals(other._lines, _lines)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,storeId,productId,name,description,yieldQuantity,wastagePercent,isActive,const DeepCollectionEquality().hash(_lines),createdAt);

@override
String toString() {
  return 'Recipe(id: $id, storeId: $storeId, productId: $productId, name: $name, description: $description, yieldQuantity: $yieldQuantity, wastagePercent: $wastagePercent, isActive: $isActive, lines: $lines, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$RecipeCopyWith<$Res> implements $RecipeCopyWith<$Res> {
  factory _$RecipeCopyWith(_Recipe value, $Res Function(_Recipe) _then) = __$RecipeCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(name: 'store_id') String? storeId,@JsonKey(name: 'product_id') String? productId, String name, String? description,@JsonKey(name: 'yield_quantity') double yieldQuantity,@JsonKey(name: 'wastage_percent') double wastagePercent,@JsonKey(name: 'is_active') bool isActive, List<RecipeIngredient> lines,@JsonKey(name: 'created_at') DateTime? createdAt
});




}
/// @nodoc
class __$RecipeCopyWithImpl<$Res>
    implements _$RecipeCopyWith<$Res> {
  __$RecipeCopyWithImpl(this._self, this._then);

  final _Recipe _self;
  final $Res Function(_Recipe) _then;

/// Create a copy of Recipe
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? storeId = freezed,Object? productId = freezed,Object? name = null,Object? description = freezed,Object? yieldQuantity = null,Object? wastagePercent = null,Object? isActive = null,Object? lines = null,Object? createdAt = freezed,}) {
  return _then(_Recipe(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,storeId: freezed == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String?,productId: freezed == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,yieldQuantity: null == yieldQuantity ? _self.yieldQuantity : yieldQuantity // ignore: cast_nullable_to_non_nullable
as double,wastagePercent: null == wastagePercent ? _self.wastagePercent : wastagePercent // ignore: cast_nullable_to_non_nullable
as double,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,lines: null == lines ? _self._lines : lines // ignore: cast_nullable_to_non_nullable
as List<RecipeIngredient>,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}


/// @nodoc
mixin _$RecipeCreate {

@JsonKey(name: 'store_id') String get storeId;@JsonKey(name: 'product_id') String get productId; String get name; String? get description;@JsonKey(name: 'yield_quantity') double get yieldQuantity;@JsonKey(name: 'wastage_percent') double get wastagePercent;@JsonKey(name: 'is_active') bool get isActive; List<RecipeIngredientCreate> get lines;
/// Create a copy of RecipeCreate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecipeCreateCopyWith<RecipeCreate> get copyWith => _$RecipeCreateCopyWithImpl<RecipeCreate>(this as RecipeCreate, _$identity);

  /// Serializes this RecipeCreate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecipeCreate&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.yieldQuantity, yieldQuantity) || other.yieldQuantity == yieldQuantity)&&(identical(other.wastagePercent, wastagePercent) || other.wastagePercent == wastagePercent)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&const DeepCollectionEquality().equals(other.lines, lines));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,storeId,productId,name,description,yieldQuantity,wastagePercent,isActive,const DeepCollectionEquality().hash(lines));

@override
String toString() {
  return 'RecipeCreate(storeId: $storeId, productId: $productId, name: $name, description: $description, yieldQuantity: $yieldQuantity, wastagePercent: $wastagePercent, isActive: $isActive, lines: $lines)';
}


}

/// @nodoc
abstract mixin class $RecipeCreateCopyWith<$Res>  {
  factory $RecipeCreateCopyWith(RecipeCreate value, $Res Function(RecipeCreate) _then) = _$RecipeCreateCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'store_id') String storeId,@JsonKey(name: 'product_id') String productId, String name, String? description,@JsonKey(name: 'yield_quantity') double yieldQuantity,@JsonKey(name: 'wastage_percent') double wastagePercent,@JsonKey(name: 'is_active') bool isActive, List<RecipeIngredientCreate> lines
});




}
/// @nodoc
class _$RecipeCreateCopyWithImpl<$Res>
    implements $RecipeCreateCopyWith<$Res> {
  _$RecipeCreateCopyWithImpl(this._self, this._then);

  final RecipeCreate _self;
  final $Res Function(RecipeCreate) _then;

/// Create a copy of RecipeCreate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? storeId = null,Object? productId = null,Object? name = null,Object? description = freezed,Object? yieldQuantity = null,Object? wastagePercent = null,Object? isActive = null,Object? lines = null,}) {
  return _then(_self.copyWith(
storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,yieldQuantity: null == yieldQuantity ? _self.yieldQuantity : yieldQuantity // ignore: cast_nullable_to_non_nullable
as double,wastagePercent: null == wastagePercent ? _self.wastagePercent : wastagePercent // ignore: cast_nullable_to_non_nullable
as double,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,lines: null == lines ? _self.lines : lines // ignore: cast_nullable_to_non_nullable
as List<RecipeIngredientCreate>,
  ));
}

}


/// Adds pattern-matching-related methods to [RecipeCreate].
extension RecipeCreatePatterns on RecipeCreate {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RecipeCreate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RecipeCreate() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RecipeCreate value)  $default,){
final _that = this;
switch (_that) {
case _RecipeCreate():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RecipeCreate value)?  $default,){
final _that = this;
switch (_that) {
case _RecipeCreate() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'store_id')  String storeId, @JsonKey(name: 'product_id')  String productId,  String name,  String? description, @JsonKey(name: 'yield_quantity')  double yieldQuantity, @JsonKey(name: 'wastage_percent')  double wastagePercent, @JsonKey(name: 'is_active')  bool isActive,  List<RecipeIngredientCreate> lines)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RecipeCreate() when $default != null:
return $default(_that.storeId,_that.productId,_that.name,_that.description,_that.yieldQuantity,_that.wastagePercent,_that.isActive,_that.lines);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'store_id')  String storeId, @JsonKey(name: 'product_id')  String productId,  String name,  String? description, @JsonKey(name: 'yield_quantity')  double yieldQuantity, @JsonKey(name: 'wastage_percent')  double wastagePercent, @JsonKey(name: 'is_active')  bool isActive,  List<RecipeIngredientCreate> lines)  $default,) {final _that = this;
switch (_that) {
case _RecipeCreate():
return $default(_that.storeId,_that.productId,_that.name,_that.description,_that.yieldQuantity,_that.wastagePercent,_that.isActive,_that.lines);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'store_id')  String storeId, @JsonKey(name: 'product_id')  String productId,  String name,  String? description, @JsonKey(name: 'yield_quantity')  double yieldQuantity, @JsonKey(name: 'wastage_percent')  double wastagePercent, @JsonKey(name: 'is_active')  bool isActive,  List<RecipeIngredientCreate> lines)?  $default,) {final _that = this;
switch (_that) {
case _RecipeCreate() when $default != null:
return $default(_that.storeId,_that.productId,_that.name,_that.description,_that.yieldQuantity,_that.wastagePercent,_that.isActive,_that.lines);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RecipeCreate implements RecipeCreate {
  const _RecipeCreate({@JsonKey(name: 'store_id') required this.storeId, @JsonKey(name: 'product_id') required this.productId, required this.name, this.description, @JsonKey(name: 'yield_quantity') this.yieldQuantity = 1.0, @JsonKey(name: 'wastage_percent') this.wastagePercent = 0, @JsonKey(name: 'is_active') this.isActive = true, final  List<RecipeIngredientCreate> lines = const []}): _lines = lines;
  factory _RecipeCreate.fromJson(Map<String, dynamic> json) => _$RecipeCreateFromJson(json);

@override@JsonKey(name: 'store_id') final  String storeId;
@override@JsonKey(name: 'product_id') final  String productId;
@override final  String name;
@override final  String? description;
@override@JsonKey(name: 'yield_quantity') final  double yieldQuantity;
@override@JsonKey(name: 'wastage_percent') final  double wastagePercent;
@override@JsonKey(name: 'is_active') final  bool isActive;
 final  List<RecipeIngredientCreate> _lines;
@override@JsonKey() List<RecipeIngredientCreate> get lines {
  if (_lines is EqualUnmodifiableListView) return _lines;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_lines);
}


/// Create a copy of RecipeCreate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RecipeCreateCopyWith<_RecipeCreate> get copyWith => __$RecipeCreateCopyWithImpl<_RecipeCreate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RecipeCreateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RecipeCreate&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.yieldQuantity, yieldQuantity) || other.yieldQuantity == yieldQuantity)&&(identical(other.wastagePercent, wastagePercent) || other.wastagePercent == wastagePercent)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&const DeepCollectionEquality().equals(other._lines, _lines));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,storeId,productId,name,description,yieldQuantity,wastagePercent,isActive,const DeepCollectionEquality().hash(_lines));

@override
String toString() {
  return 'RecipeCreate(storeId: $storeId, productId: $productId, name: $name, description: $description, yieldQuantity: $yieldQuantity, wastagePercent: $wastagePercent, isActive: $isActive, lines: $lines)';
}


}

/// @nodoc
abstract mixin class _$RecipeCreateCopyWith<$Res> implements $RecipeCreateCopyWith<$Res> {
  factory _$RecipeCreateCopyWith(_RecipeCreate value, $Res Function(_RecipeCreate) _then) = __$RecipeCreateCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'store_id') String storeId,@JsonKey(name: 'product_id') String productId, String name, String? description,@JsonKey(name: 'yield_quantity') double yieldQuantity,@JsonKey(name: 'wastage_percent') double wastagePercent,@JsonKey(name: 'is_active') bool isActive, List<RecipeIngredientCreate> lines
});




}
/// @nodoc
class __$RecipeCreateCopyWithImpl<$Res>
    implements _$RecipeCreateCopyWith<$Res> {
  __$RecipeCreateCopyWithImpl(this._self, this._then);

  final _RecipeCreate _self;
  final $Res Function(_RecipeCreate) _then;

/// Create a copy of RecipeCreate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? storeId = null,Object? productId = null,Object? name = null,Object? description = freezed,Object? yieldQuantity = null,Object? wastagePercent = null,Object? isActive = null,Object? lines = null,}) {
  return _then(_RecipeCreate(
storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,yieldQuantity: null == yieldQuantity ? _self.yieldQuantity : yieldQuantity // ignore: cast_nullable_to_non_nullable
as double,wastagePercent: null == wastagePercent ? _self.wastagePercent : wastagePercent // ignore: cast_nullable_to_non_nullable
as double,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,lines: null == lines ? _self._lines : lines // ignore: cast_nullable_to_non_nullable
as List<RecipeIngredientCreate>,
  ));
}


}


/// @nodoc
mixin _$RecipeUpdate {

 String? get name; String? get description;@JsonKey(name: 'yield_quantity') double? get yieldQuantity;@JsonKey(name: 'wastage_percent') double? get wastagePercent;@JsonKey(name: 'is_active') bool? get isActive; List<RecipeIngredientCreate>? get lines;
/// Create a copy of RecipeUpdate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecipeUpdateCopyWith<RecipeUpdate> get copyWith => _$RecipeUpdateCopyWithImpl<RecipeUpdate>(this as RecipeUpdate, _$identity);

  /// Serializes this RecipeUpdate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecipeUpdate&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.yieldQuantity, yieldQuantity) || other.yieldQuantity == yieldQuantity)&&(identical(other.wastagePercent, wastagePercent) || other.wastagePercent == wastagePercent)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&const DeepCollectionEquality().equals(other.lines, lines));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,description,yieldQuantity,wastagePercent,isActive,const DeepCollectionEquality().hash(lines));

@override
String toString() {
  return 'RecipeUpdate(name: $name, description: $description, yieldQuantity: $yieldQuantity, wastagePercent: $wastagePercent, isActive: $isActive, lines: $lines)';
}


}

/// @nodoc
abstract mixin class $RecipeUpdateCopyWith<$Res>  {
  factory $RecipeUpdateCopyWith(RecipeUpdate value, $Res Function(RecipeUpdate) _then) = _$RecipeUpdateCopyWithImpl;
@useResult
$Res call({
 String? name, String? description,@JsonKey(name: 'yield_quantity') double? yieldQuantity,@JsonKey(name: 'wastage_percent') double? wastagePercent,@JsonKey(name: 'is_active') bool? isActive, List<RecipeIngredientCreate>? lines
});




}
/// @nodoc
class _$RecipeUpdateCopyWithImpl<$Res>
    implements $RecipeUpdateCopyWith<$Res> {
  _$RecipeUpdateCopyWithImpl(this._self, this._then);

  final RecipeUpdate _self;
  final $Res Function(RecipeUpdate) _then;

/// Create a copy of RecipeUpdate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? description = freezed,Object? yieldQuantity = freezed,Object? wastagePercent = freezed,Object? isActive = freezed,Object? lines = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,yieldQuantity: freezed == yieldQuantity ? _self.yieldQuantity : yieldQuantity // ignore: cast_nullable_to_non_nullable
as double?,wastagePercent: freezed == wastagePercent ? _self.wastagePercent : wastagePercent // ignore: cast_nullable_to_non_nullable
as double?,isActive: freezed == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool?,lines: freezed == lines ? _self.lines : lines // ignore: cast_nullable_to_non_nullable
as List<RecipeIngredientCreate>?,
  ));
}

}


/// Adds pattern-matching-related methods to [RecipeUpdate].
extension RecipeUpdatePatterns on RecipeUpdate {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RecipeUpdate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RecipeUpdate() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RecipeUpdate value)  $default,){
final _that = this;
switch (_that) {
case _RecipeUpdate():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RecipeUpdate value)?  $default,){
final _that = this;
switch (_that) {
case _RecipeUpdate() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? name,  String? description, @JsonKey(name: 'yield_quantity')  double? yieldQuantity, @JsonKey(name: 'wastage_percent')  double? wastagePercent, @JsonKey(name: 'is_active')  bool? isActive,  List<RecipeIngredientCreate>? lines)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RecipeUpdate() when $default != null:
return $default(_that.name,_that.description,_that.yieldQuantity,_that.wastagePercent,_that.isActive,_that.lines);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? name,  String? description, @JsonKey(name: 'yield_quantity')  double? yieldQuantity, @JsonKey(name: 'wastage_percent')  double? wastagePercent, @JsonKey(name: 'is_active')  bool? isActive,  List<RecipeIngredientCreate>? lines)  $default,) {final _that = this;
switch (_that) {
case _RecipeUpdate():
return $default(_that.name,_that.description,_that.yieldQuantity,_that.wastagePercent,_that.isActive,_that.lines);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? name,  String? description, @JsonKey(name: 'yield_quantity')  double? yieldQuantity, @JsonKey(name: 'wastage_percent')  double? wastagePercent, @JsonKey(name: 'is_active')  bool? isActive,  List<RecipeIngredientCreate>? lines)?  $default,) {final _that = this;
switch (_that) {
case _RecipeUpdate() when $default != null:
return $default(_that.name,_that.description,_that.yieldQuantity,_that.wastagePercent,_that.isActive,_that.lines);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RecipeUpdate implements RecipeUpdate {
  const _RecipeUpdate({this.name, this.description, @JsonKey(name: 'yield_quantity') this.yieldQuantity, @JsonKey(name: 'wastage_percent') this.wastagePercent, @JsonKey(name: 'is_active') this.isActive, final  List<RecipeIngredientCreate>? lines}): _lines = lines;
  factory _RecipeUpdate.fromJson(Map<String, dynamic> json) => _$RecipeUpdateFromJson(json);

@override final  String? name;
@override final  String? description;
@override@JsonKey(name: 'yield_quantity') final  double? yieldQuantity;
@override@JsonKey(name: 'wastage_percent') final  double? wastagePercent;
@override@JsonKey(name: 'is_active') final  bool? isActive;
 final  List<RecipeIngredientCreate>? _lines;
@override List<RecipeIngredientCreate>? get lines {
  final value = _lines;
  if (value == null) return null;
  if (_lines is EqualUnmodifiableListView) return _lines;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of RecipeUpdate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RecipeUpdateCopyWith<_RecipeUpdate> get copyWith => __$RecipeUpdateCopyWithImpl<_RecipeUpdate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RecipeUpdateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RecipeUpdate&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.yieldQuantity, yieldQuantity) || other.yieldQuantity == yieldQuantity)&&(identical(other.wastagePercent, wastagePercent) || other.wastagePercent == wastagePercent)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&const DeepCollectionEquality().equals(other._lines, _lines));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,description,yieldQuantity,wastagePercent,isActive,const DeepCollectionEquality().hash(_lines));

@override
String toString() {
  return 'RecipeUpdate(name: $name, description: $description, yieldQuantity: $yieldQuantity, wastagePercent: $wastagePercent, isActive: $isActive, lines: $lines)';
}


}

/// @nodoc
abstract mixin class _$RecipeUpdateCopyWith<$Res> implements $RecipeUpdateCopyWith<$Res> {
  factory _$RecipeUpdateCopyWith(_RecipeUpdate value, $Res Function(_RecipeUpdate) _then) = __$RecipeUpdateCopyWithImpl;
@override @useResult
$Res call({
 String? name, String? description,@JsonKey(name: 'yield_quantity') double? yieldQuantity,@JsonKey(name: 'wastage_percent') double? wastagePercent,@JsonKey(name: 'is_active') bool? isActive, List<RecipeIngredientCreate>? lines
});




}
/// @nodoc
class __$RecipeUpdateCopyWithImpl<$Res>
    implements _$RecipeUpdateCopyWith<$Res> {
  __$RecipeUpdateCopyWithImpl(this._self, this._then);

  final _RecipeUpdate _self;
  final $Res Function(_RecipeUpdate) _then;

/// Create a copy of RecipeUpdate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? description = freezed,Object? yieldQuantity = freezed,Object? wastagePercent = freezed,Object? isActive = freezed,Object? lines = freezed,}) {
  return _then(_RecipeUpdate(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,yieldQuantity: freezed == yieldQuantity ? _self.yieldQuantity : yieldQuantity // ignore: cast_nullable_to_non_nullable
as double?,wastagePercent: freezed == wastagePercent ? _self.wastagePercent : wastagePercent // ignore: cast_nullable_to_non_nullable
as double?,isActive: freezed == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool?,lines: freezed == lines ? _self._lines : lines // ignore: cast_nullable_to_non_nullable
as List<RecipeIngredientCreate>?,
  ));
}


}


/// @nodoc
mixin _$InventoryTransfer {

 String get id;@JsonKey(name: 'store_id') String get storeId;@JsonKey(name: 'from_location_id') String get fromLocationId;@JsonKey(name: 'from_location_name') String? get fromLocationName;@JsonKey(name: 'to_location_id') String get toLocationId;@JsonKey(name: 'to_location_name') String? get toLocationName;@JsonKey(name: 'item_id') String get itemId;@JsonKey(name: 'item_name') String? get itemName; double get quantity; String get status; String? get notes;@JsonKey(name: 'created_at') DateTime? get createdAt;
/// Create a copy of InventoryTransfer
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InventoryTransferCopyWith<InventoryTransfer> get copyWith => _$InventoryTransferCopyWithImpl<InventoryTransfer>(this as InventoryTransfer, _$identity);

  /// Serializes this InventoryTransfer to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InventoryTransfer&&(identical(other.id, id) || other.id == id)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.fromLocationId, fromLocationId) || other.fromLocationId == fromLocationId)&&(identical(other.fromLocationName, fromLocationName) || other.fromLocationName == fromLocationName)&&(identical(other.toLocationId, toLocationId) || other.toLocationId == toLocationId)&&(identical(other.toLocationName, toLocationName) || other.toLocationName == toLocationName)&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.itemName, itemName) || other.itemName == itemName)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.status, status) || other.status == status)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,storeId,fromLocationId,fromLocationName,toLocationId,toLocationName,itemId,itemName,quantity,status,notes,createdAt);

@override
String toString() {
  return 'InventoryTransfer(id: $id, storeId: $storeId, fromLocationId: $fromLocationId, fromLocationName: $fromLocationName, toLocationId: $toLocationId, toLocationName: $toLocationName, itemId: $itemId, itemName: $itemName, quantity: $quantity, status: $status, notes: $notes, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $InventoryTransferCopyWith<$Res>  {
  factory $InventoryTransferCopyWith(InventoryTransfer value, $Res Function(InventoryTransfer) _then) = _$InventoryTransferCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(name: 'store_id') String storeId,@JsonKey(name: 'from_location_id') String fromLocationId,@JsonKey(name: 'from_location_name') String? fromLocationName,@JsonKey(name: 'to_location_id') String toLocationId,@JsonKey(name: 'to_location_name') String? toLocationName,@JsonKey(name: 'item_id') String itemId,@JsonKey(name: 'item_name') String? itemName, double quantity, String status, String? notes,@JsonKey(name: 'created_at') DateTime? createdAt
});




}
/// @nodoc
class _$InventoryTransferCopyWithImpl<$Res>
    implements $InventoryTransferCopyWith<$Res> {
  _$InventoryTransferCopyWithImpl(this._self, this._then);

  final InventoryTransfer _self;
  final $Res Function(InventoryTransfer) _then;

/// Create a copy of InventoryTransfer
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? storeId = null,Object? fromLocationId = null,Object? fromLocationName = freezed,Object? toLocationId = null,Object? toLocationName = freezed,Object? itemId = null,Object? itemName = freezed,Object? quantity = null,Object? status = null,Object? notes = freezed,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,fromLocationId: null == fromLocationId ? _self.fromLocationId : fromLocationId // ignore: cast_nullable_to_non_nullable
as String,fromLocationName: freezed == fromLocationName ? _self.fromLocationName : fromLocationName // ignore: cast_nullable_to_non_nullable
as String?,toLocationId: null == toLocationId ? _self.toLocationId : toLocationId // ignore: cast_nullable_to_non_nullable
as String,toLocationName: freezed == toLocationName ? _self.toLocationName : toLocationName // ignore: cast_nullable_to_non_nullable
as String?,itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String,itemName: freezed == itemName ? _self.itemName : itemName // ignore: cast_nullable_to_non_nullable
as String?,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [InventoryTransfer].
extension InventoryTransferPatterns on InventoryTransfer {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InventoryTransfer value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InventoryTransfer() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InventoryTransfer value)  $default,){
final _that = this;
switch (_that) {
case _InventoryTransfer():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InventoryTransfer value)?  $default,){
final _that = this;
switch (_that) {
case _InventoryTransfer() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'store_id')  String storeId, @JsonKey(name: 'from_location_id')  String fromLocationId, @JsonKey(name: 'from_location_name')  String? fromLocationName, @JsonKey(name: 'to_location_id')  String toLocationId, @JsonKey(name: 'to_location_name')  String? toLocationName, @JsonKey(name: 'item_id')  String itemId, @JsonKey(name: 'item_name')  String? itemName,  double quantity,  String status,  String? notes, @JsonKey(name: 'created_at')  DateTime? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InventoryTransfer() when $default != null:
return $default(_that.id,_that.storeId,_that.fromLocationId,_that.fromLocationName,_that.toLocationId,_that.toLocationName,_that.itemId,_that.itemName,_that.quantity,_that.status,_that.notes,_that.createdAt);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'store_id')  String storeId, @JsonKey(name: 'from_location_id')  String fromLocationId, @JsonKey(name: 'from_location_name')  String? fromLocationName, @JsonKey(name: 'to_location_id')  String toLocationId, @JsonKey(name: 'to_location_name')  String? toLocationName, @JsonKey(name: 'item_id')  String itemId, @JsonKey(name: 'item_name')  String? itemName,  double quantity,  String status,  String? notes, @JsonKey(name: 'created_at')  DateTime? createdAt)  $default,) {final _that = this;
switch (_that) {
case _InventoryTransfer():
return $default(_that.id,_that.storeId,_that.fromLocationId,_that.fromLocationName,_that.toLocationId,_that.toLocationName,_that.itemId,_that.itemName,_that.quantity,_that.status,_that.notes,_that.createdAt);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(name: 'store_id')  String storeId, @JsonKey(name: 'from_location_id')  String fromLocationId, @JsonKey(name: 'from_location_name')  String? fromLocationName, @JsonKey(name: 'to_location_id')  String toLocationId, @JsonKey(name: 'to_location_name')  String? toLocationName, @JsonKey(name: 'item_id')  String itemId, @JsonKey(name: 'item_name')  String? itemName,  double quantity,  String status,  String? notes, @JsonKey(name: 'created_at')  DateTime? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _InventoryTransfer() when $default != null:
return $default(_that.id,_that.storeId,_that.fromLocationId,_that.fromLocationName,_that.toLocationId,_that.toLocationName,_that.itemId,_that.itemName,_that.quantity,_that.status,_that.notes,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InventoryTransfer implements InventoryTransfer {
  const _InventoryTransfer({required this.id, @JsonKey(name: 'store_id') required this.storeId, @JsonKey(name: 'from_location_id') required this.fromLocationId, @JsonKey(name: 'from_location_name') this.fromLocationName, @JsonKey(name: 'to_location_id') required this.toLocationId, @JsonKey(name: 'to_location_name') this.toLocationName, @JsonKey(name: 'item_id') required this.itemId, @JsonKey(name: 'item_name') this.itemName, required this.quantity, this.status = 'pending', this.notes, @JsonKey(name: 'created_at') this.createdAt});
  factory _InventoryTransfer.fromJson(Map<String, dynamic> json) => _$InventoryTransferFromJson(json);

@override final  String id;
@override@JsonKey(name: 'store_id') final  String storeId;
@override@JsonKey(name: 'from_location_id') final  String fromLocationId;
@override@JsonKey(name: 'from_location_name') final  String? fromLocationName;
@override@JsonKey(name: 'to_location_id') final  String toLocationId;
@override@JsonKey(name: 'to_location_name') final  String? toLocationName;
@override@JsonKey(name: 'item_id') final  String itemId;
@override@JsonKey(name: 'item_name') final  String? itemName;
@override final  double quantity;
@override@JsonKey() final  String status;
@override final  String? notes;
@override@JsonKey(name: 'created_at') final  DateTime? createdAt;

/// Create a copy of InventoryTransfer
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InventoryTransferCopyWith<_InventoryTransfer> get copyWith => __$InventoryTransferCopyWithImpl<_InventoryTransfer>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InventoryTransferToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InventoryTransfer&&(identical(other.id, id) || other.id == id)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.fromLocationId, fromLocationId) || other.fromLocationId == fromLocationId)&&(identical(other.fromLocationName, fromLocationName) || other.fromLocationName == fromLocationName)&&(identical(other.toLocationId, toLocationId) || other.toLocationId == toLocationId)&&(identical(other.toLocationName, toLocationName) || other.toLocationName == toLocationName)&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.itemName, itemName) || other.itemName == itemName)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.status, status) || other.status == status)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,storeId,fromLocationId,fromLocationName,toLocationId,toLocationName,itemId,itemName,quantity,status,notes,createdAt);

@override
String toString() {
  return 'InventoryTransfer(id: $id, storeId: $storeId, fromLocationId: $fromLocationId, fromLocationName: $fromLocationName, toLocationId: $toLocationId, toLocationName: $toLocationName, itemId: $itemId, itemName: $itemName, quantity: $quantity, status: $status, notes: $notes, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$InventoryTransferCopyWith<$Res> implements $InventoryTransferCopyWith<$Res> {
  factory _$InventoryTransferCopyWith(_InventoryTransfer value, $Res Function(_InventoryTransfer) _then) = __$InventoryTransferCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(name: 'store_id') String storeId,@JsonKey(name: 'from_location_id') String fromLocationId,@JsonKey(name: 'from_location_name') String? fromLocationName,@JsonKey(name: 'to_location_id') String toLocationId,@JsonKey(name: 'to_location_name') String? toLocationName,@JsonKey(name: 'item_id') String itemId,@JsonKey(name: 'item_name') String? itemName, double quantity, String status, String? notes,@JsonKey(name: 'created_at') DateTime? createdAt
});




}
/// @nodoc
class __$InventoryTransferCopyWithImpl<$Res>
    implements _$InventoryTransferCopyWith<$Res> {
  __$InventoryTransferCopyWithImpl(this._self, this._then);

  final _InventoryTransfer _self;
  final $Res Function(_InventoryTransfer) _then;

/// Create a copy of InventoryTransfer
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? storeId = null,Object? fromLocationId = null,Object? fromLocationName = freezed,Object? toLocationId = null,Object? toLocationName = freezed,Object? itemId = null,Object? itemName = freezed,Object? quantity = null,Object? status = null,Object? notes = freezed,Object? createdAt = freezed,}) {
  return _then(_InventoryTransfer(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,fromLocationId: null == fromLocationId ? _self.fromLocationId : fromLocationId // ignore: cast_nullable_to_non_nullable
as String,fromLocationName: freezed == fromLocationName ? _self.fromLocationName : fromLocationName // ignore: cast_nullable_to_non_nullable
as String?,toLocationId: null == toLocationId ? _self.toLocationId : toLocationId // ignore: cast_nullable_to_non_nullable
as String,toLocationName: freezed == toLocationName ? _self.toLocationName : toLocationName // ignore: cast_nullable_to_non_nullable
as String?,itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String,itemName: freezed == itemName ? _self.itemName : itemName // ignore: cast_nullable_to_non_nullable
as String?,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}


/// @nodoc
mixin _$TransferCreate {

@JsonKey(name: 'store_id') String get storeId;@JsonKey(name: 'from_location_id') String get fromLocationId;@JsonKey(name: 'to_location_id') String get toLocationId;@JsonKey(name: 'item_id') String get itemId; double get quantity; String? get notes;
/// Create a copy of TransferCreate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransferCreateCopyWith<TransferCreate> get copyWith => _$TransferCreateCopyWithImpl<TransferCreate>(this as TransferCreate, _$identity);

  /// Serializes this TransferCreate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransferCreate&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.fromLocationId, fromLocationId) || other.fromLocationId == fromLocationId)&&(identical(other.toLocationId, toLocationId) || other.toLocationId == toLocationId)&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.notes, notes) || other.notes == notes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,storeId,fromLocationId,toLocationId,itemId,quantity,notes);

@override
String toString() {
  return 'TransferCreate(storeId: $storeId, fromLocationId: $fromLocationId, toLocationId: $toLocationId, itemId: $itemId, quantity: $quantity, notes: $notes)';
}


}

/// @nodoc
abstract mixin class $TransferCreateCopyWith<$Res>  {
  factory $TransferCreateCopyWith(TransferCreate value, $Res Function(TransferCreate) _then) = _$TransferCreateCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'store_id') String storeId,@JsonKey(name: 'from_location_id') String fromLocationId,@JsonKey(name: 'to_location_id') String toLocationId,@JsonKey(name: 'item_id') String itemId, double quantity, String? notes
});




}
/// @nodoc
class _$TransferCreateCopyWithImpl<$Res>
    implements $TransferCreateCopyWith<$Res> {
  _$TransferCreateCopyWithImpl(this._self, this._then);

  final TransferCreate _self;
  final $Res Function(TransferCreate) _then;

/// Create a copy of TransferCreate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? storeId = null,Object? fromLocationId = null,Object? toLocationId = null,Object? itemId = null,Object? quantity = null,Object? notes = freezed,}) {
  return _then(_self.copyWith(
storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,fromLocationId: null == fromLocationId ? _self.fromLocationId : fromLocationId // ignore: cast_nullable_to_non_nullable
as String,toLocationId: null == toLocationId ? _self.toLocationId : toLocationId // ignore: cast_nullable_to_non_nullable
as String,itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [TransferCreate].
extension TransferCreatePatterns on TransferCreate {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TransferCreate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TransferCreate() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TransferCreate value)  $default,){
final _that = this;
switch (_that) {
case _TransferCreate():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TransferCreate value)?  $default,){
final _that = this;
switch (_that) {
case _TransferCreate() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'store_id')  String storeId, @JsonKey(name: 'from_location_id')  String fromLocationId, @JsonKey(name: 'to_location_id')  String toLocationId, @JsonKey(name: 'item_id')  String itemId,  double quantity,  String? notes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TransferCreate() when $default != null:
return $default(_that.storeId,_that.fromLocationId,_that.toLocationId,_that.itemId,_that.quantity,_that.notes);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'store_id')  String storeId, @JsonKey(name: 'from_location_id')  String fromLocationId, @JsonKey(name: 'to_location_id')  String toLocationId, @JsonKey(name: 'item_id')  String itemId,  double quantity,  String? notes)  $default,) {final _that = this;
switch (_that) {
case _TransferCreate():
return $default(_that.storeId,_that.fromLocationId,_that.toLocationId,_that.itemId,_that.quantity,_that.notes);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'store_id')  String storeId, @JsonKey(name: 'from_location_id')  String fromLocationId, @JsonKey(name: 'to_location_id')  String toLocationId, @JsonKey(name: 'item_id')  String itemId,  double quantity,  String? notes)?  $default,) {final _that = this;
switch (_that) {
case _TransferCreate() when $default != null:
return $default(_that.storeId,_that.fromLocationId,_that.toLocationId,_that.itemId,_that.quantity,_that.notes);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TransferCreate implements TransferCreate {
  const _TransferCreate({@JsonKey(name: 'store_id') required this.storeId, @JsonKey(name: 'from_location_id') required this.fromLocationId, @JsonKey(name: 'to_location_id') required this.toLocationId, @JsonKey(name: 'item_id') required this.itemId, required this.quantity, this.notes});
  factory _TransferCreate.fromJson(Map<String, dynamic> json) => _$TransferCreateFromJson(json);

@override@JsonKey(name: 'store_id') final  String storeId;
@override@JsonKey(name: 'from_location_id') final  String fromLocationId;
@override@JsonKey(name: 'to_location_id') final  String toLocationId;
@override@JsonKey(name: 'item_id') final  String itemId;
@override final  double quantity;
@override final  String? notes;

/// Create a copy of TransferCreate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransferCreateCopyWith<_TransferCreate> get copyWith => __$TransferCreateCopyWithImpl<_TransferCreate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TransferCreateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransferCreate&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.fromLocationId, fromLocationId) || other.fromLocationId == fromLocationId)&&(identical(other.toLocationId, toLocationId) || other.toLocationId == toLocationId)&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.notes, notes) || other.notes == notes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,storeId,fromLocationId,toLocationId,itemId,quantity,notes);

@override
String toString() {
  return 'TransferCreate(storeId: $storeId, fromLocationId: $fromLocationId, toLocationId: $toLocationId, itemId: $itemId, quantity: $quantity, notes: $notes)';
}


}

/// @nodoc
abstract mixin class _$TransferCreateCopyWith<$Res> implements $TransferCreateCopyWith<$Res> {
  factory _$TransferCreateCopyWith(_TransferCreate value, $Res Function(_TransferCreate) _then) = __$TransferCreateCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'store_id') String storeId,@JsonKey(name: 'from_location_id') String fromLocationId,@JsonKey(name: 'to_location_id') String toLocationId,@JsonKey(name: 'item_id') String itemId, double quantity, String? notes
});




}
/// @nodoc
class __$TransferCreateCopyWithImpl<$Res>
    implements _$TransferCreateCopyWith<$Res> {
  __$TransferCreateCopyWithImpl(this._self, this._then);

  final _TransferCreate _self;
  final $Res Function(_TransferCreate) _then;

/// Create a copy of TransferCreate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? storeId = null,Object? fromLocationId = null,Object? toLocationId = null,Object? itemId = null,Object? quantity = null,Object? notes = freezed,}) {
  return _then(_TransferCreate(
storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,fromLocationId: null == fromLocationId ? _self.fromLocationId : fromLocationId // ignore: cast_nullable_to_non_nullable
as String,toLocationId: null == toLocationId ? _self.toLocationId : toLocationId // ignore: cast_nullable_to_non_nullable
as String,itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$TransferStatusUpdate {

 String get status;
/// Create a copy of TransferStatusUpdate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransferStatusUpdateCopyWith<TransferStatusUpdate> get copyWith => _$TransferStatusUpdateCopyWithImpl<TransferStatusUpdate>(this as TransferStatusUpdate, _$identity);

  /// Serializes this TransferStatusUpdate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransferStatusUpdate&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status);

@override
String toString() {
  return 'TransferStatusUpdate(status: $status)';
}


}

/// @nodoc
abstract mixin class $TransferStatusUpdateCopyWith<$Res>  {
  factory $TransferStatusUpdateCopyWith(TransferStatusUpdate value, $Res Function(TransferStatusUpdate) _then) = _$TransferStatusUpdateCopyWithImpl;
@useResult
$Res call({
 String status
});




}
/// @nodoc
class _$TransferStatusUpdateCopyWithImpl<$Res>
    implements $TransferStatusUpdateCopyWith<$Res> {
  _$TransferStatusUpdateCopyWithImpl(this._self, this._then);

  final TransferStatusUpdate _self;
  final $Res Function(TransferStatusUpdate) _then;

/// Create a copy of TransferStatusUpdate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TransferStatusUpdate].
extension TransferStatusUpdatePatterns on TransferStatusUpdate {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TransferStatusUpdate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TransferStatusUpdate() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TransferStatusUpdate value)  $default,){
final _that = this;
switch (_that) {
case _TransferStatusUpdate():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TransferStatusUpdate value)?  $default,){
final _that = this;
switch (_that) {
case _TransferStatusUpdate() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TransferStatusUpdate() when $default != null:
return $default(_that.status);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String status)  $default,) {final _that = this;
switch (_that) {
case _TransferStatusUpdate():
return $default(_that.status);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String status)?  $default,) {final _that = this;
switch (_that) {
case _TransferStatusUpdate() when $default != null:
return $default(_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TransferStatusUpdate implements TransferStatusUpdate {
  const _TransferStatusUpdate({required this.status});
  factory _TransferStatusUpdate.fromJson(Map<String, dynamic> json) => _$TransferStatusUpdateFromJson(json);

@override final  String status;

/// Create a copy of TransferStatusUpdate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransferStatusUpdateCopyWith<_TransferStatusUpdate> get copyWith => __$TransferStatusUpdateCopyWithImpl<_TransferStatusUpdate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TransferStatusUpdateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransferStatusUpdate&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status);

@override
String toString() {
  return 'TransferStatusUpdate(status: $status)';
}


}

/// @nodoc
abstract mixin class _$TransferStatusUpdateCopyWith<$Res> implements $TransferStatusUpdateCopyWith<$Res> {
  factory _$TransferStatusUpdateCopyWith(_TransferStatusUpdate value, $Res Function(_TransferStatusUpdate) _then) = __$TransferStatusUpdateCopyWithImpl;
@override @useResult
$Res call({
 String status
});




}
/// @nodoc
class __$TransferStatusUpdateCopyWithImpl<$Res>
    implements _$TransferStatusUpdateCopyWith<$Res> {
  __$TransferStatusUpdateCopyWithImpl(this._self, this._then);

  final _TransferStatusUpdate _self;
  final $Res Function(_TransferStatusUpdate) _then;

/// Create a copy of TransferStatusUpdate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,}) {
  return _then(_TransferStatusUpdate(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$OutOfStockItem {

 String get id;@JsonKey(name: 'store_id') String get storeId; String get name; String? get sku; String? get category;@JsonKey(name: 'is_active') bool get isActive;
/// Create a copy of OutOfStockItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OutOfStockItemCopyWith<OutOfStockItem> get copyWith => _$OutOfStockItemCopyWithImpl<OutOfStockItem>(this as OutOfStockItem, _$identity);

  /// Serializes this OutOfStockItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OutOfStockItem&&(identical(other.id, id) || other.id == id)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.name, name) || other.name == name)&&(identical(other.sku, sku) || other.sku == sku)&&(identical(other.category, category) || other.category == category)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,storeId,name,sku,category,isActive);

@override
String toString() {
  return 'OutOfStockItem(id: $id, storeId: $storeId, name: $name, sku: $sku, category: $category, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class $OutOfStockItemCopyWith<$Res>  {
  factory $OutOfStockItemCopyWith(OutOfStockItem value, $Res Function(OutOfStockItem) _then) = _$OutOfStockItemCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(name: 'store_id') String storeId, String name, String? sku, String? category,@JsonKey(name: 'is_active') bool isActive
});




}
/// @nodoc
class _$OutOfStockItemCopyWithImpl<$Res>
    implements $OutOfStockItemCopyWith<$Res> {
  _$OutOfStockItemCopyWithImpl(this._self, this._then);

  final OutOfStockItem _self;
  final $Res Function(OutOfStockItem) _then;

/// Create a copy of OutOfStockItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? storeId = null,Object? name = null,Object? sku = freezed,Object? category = freezed,Object? isActive = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,sku: freezed == sku ? _self.sku : sku // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [OutOfStockItem].
extension OutOfStockItemPatterns on OutOfStockItem {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OutOfStockItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OutOfStockItem() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OutOfStockItem value)  $default,){
final _that = this;
switch (_that) {
case _OutOfStockItem():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OutOfStockItem value)?  $default,){
final _that = this;
switch (_that) {
case _OutOfStockItem() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'store_id')  String storeId,  String name,  String? sku,  String? category, @JsonKey(name: 'is_active')  bool isActive)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OutOfStockItem() when $default != null:
return $default(_that.id,_that.storeId,_that.name,_that.sku,_that.category,_that.isActive);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'store_id')  String storeId,  String name,  String? sku,  String? category, @JsonKey(name: 'is_active')  bool isActive)  $default,) {final _that = this;
switch (_that) {
case _OutOfStockItem():
return $default(_that.id,_that.storeId,_that.name,_that.sku,_that.category,_that.isActive);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(name: 'store_id')  String storeId,  String name,  String? sku,  String? category, @JsonKey(name: 'is_active')  bool isActive)?  $default,) {final _that = this;
switch (_that) {
case _OutOfStockItem() when $default != null:
return $default(_that.id,_that.storeId,_that.name,_that.sku,_that.category,_that.isActive);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OutOfStockItem implements OutOfStockItem {
  const _OutOfStockItem({required this.id, @JsonKey(name: 'store_id') required this.storeId, required this.name, this.sku, this.category, @JsonKey(name: 'is_active') this.isActive = false});
  factory _OutOfStockItem.fromJson(Map<String, dynamic> json) => _$OutOfStockItemFromJson(json);

@override final  String id;
@override@JsonKey(name: 'store_id') final  String storeId;
@override final  String name;
@override final  String? sku;
@override final  String? category;
@override@JsonKey(name: 'is_active') final  bool isActive;

/// Create a copy of OutOfStockItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OutOfStockItemCopyWith<_OutOfStockItem> get copyWith => __$OutOfStockItemCopyWithImpl<_OutOfStockItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OutOfStockItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OutOfStockItem&&(identical(other.id, id) || other.id == id)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.name, name) || other.name == name)&&(identical(other.sku, sku) || other.sku == sku)&&(identical(other.category, category) || other.category == category)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,storeId,name,sku,category,isActive);

@override
String toString() {
  return 'OutOfStockItem(id: $id, storeId: $storeId, name: $name, sku: $sku, category: $category, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class _$OutOfStockItemCopyWith<$Res> implements $OutOfStockItemCopyWith<$Res> {
  factory _$OutOfStockItemCopyWith(_OutOfStockItem value, $Res Function(_OutOfStockItem) _then) = __$OutOfStockItemCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(name: 'store_id') String storeId, String name, String? sku, String? category,@JsonKey(name: 'is_active') bool isActive
});




}
/// @nodoc
class __$OutOfStockItemCopyWithImpl<$Res>
    implements _$OutOfStockItemCopyWith<$Res> {
  __$OutOfStockItemCopyWithImpl(this._self, this._then);

  final _OutOfStockItem _self;
  final $Res Function(_OutOfStockItem) _then;

/// Create a copy of OutOfStockItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? storeId = null,Object? name = null,Object? sku = freezed,Object? category = freezed,Object? isActive = null,}) {
  return _then(_OutOfStockItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,sku: freezed == sku ? _self.sku : sku // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
