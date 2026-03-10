// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'kot.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$KitchenOrderTicket {

 String get id;@JsonKey(name: 'order_id') String get orderId;@JsonKey(name: 'order_number') String get orderNumber;@JsonKey(name: 'order_type') String get orderType;@JsonKey(name: 'table_label') String? get tableLabel; String get status; List<KotItem> get items;@JsonKey(name: 'created_at') DateTime? get createdAt;@JsonKey(name: 'updated_at') DateTime? get updatedAt;
/// Create a copy of KitchenOrderTicket
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$KitchenOrderTicketCopyWith<KitchenOrderTicket> get copyWith => _$KitchenOrderTicketCopyWithImpl<KitchenOrderTicket>(this as KitchenOrderTicket, _$identity);

  /// Serializes this KitchenOrderTicket to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KitchenOrderTicket&&(identical(other.id, id) || other.id == id)&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.orderNumber, orderNumber) || other.orderNumber == orderNumber)&&(identical(other.orderType, orderType) || other.orderType == orderType)&&(identical(other.tableLabel, tableLabel) || other.tableLabel == tableLabel)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,orderId,orderNumber,orderType,tableLabel,status,const DeepCollectionEquality().hash(items),createdAt,updatedAt);

@override
String toString() {
  return 'KitchenOrderTicket(id: $id, orderId: $orderId, orderNumber: $orderNumber, orderType: $orderType, tableLabel: $tableLabel, status: $status, items: $items, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $KitchenOrderTicketCopyWith<$Res>  {
  factory $KitchenOrderTicketCopyWith(KitchenOrderTicket value, $Res Function(KitchenOrderTicket) _then) = _$KitchenOrderTicketCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(name: 'order_id') String orderId,@JsonKey(name: 'order_number') String orderNumber,@JsonKey(name: 'order_type') String orderType,@JsonKey(name: 'table_label') String? tableLabel, String status, List<KotItem> items,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'updated_at') DateTime? updatedAt
});




}
/// @nodoc
class _$KitchenOrderTicketCopyWithImpl<$Res>
    implements $KitchenOrderTicketCopyWith<$Res> {
  _$KitchenOrderTicketCopyWithImpl(this._self, this._then);

  final KitchenOrderTicket _self;
  final $Res Function(KitchenOrderTicket) _then;

/// Create a copy of KitchenOrderTicket
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? orderId = null,Object? orderNumber = null,Object? orderType = null,Object? tableLabel = freezed,Object? status = null,Object? items = null,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as String,orderNumber: null == orderNumber ? _self.orderNumber : orderNumber // ignore: cast_nullable_to_non_nullable
as String,orderType: null == orderType ? _self.orderType : orderType // ignore: cast_nullable_to_non_nullable
as String,tableLabel: freezed == tableLabel ? _self.tableLabel : tableLabel // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<KotItem>,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [KitchenOrderTicket].
extension KitchenOrderTicketPatterns on KitchenOrderTicket {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _KitchenOrderTicket value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _KitchenOrderTicket() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _KitchenOrderTicket value)  $default,){
final _that = this;
switch (_that) {
case _KitchenOrderTicket():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _KitchenOrderTicket value)?  $default,){
final _that = this;
switch (_that) {
case _KitchenOrderTicket() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'order_id')  String orderId, @JsonKey(name: 'order_number')  String orderNumber, @JsonKey(name: 'order_type')  String orderType, @JsonKey(name: 'table_label')  String? tableLabel,  String status,  List<KotItem> items, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _KitchenOrderTicket() when $default != null:
return $default(_that.id,_that.orderId,_that.orderNumber,_that.orderType,_that.tableLabel,_that.status,_that.items,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'order_id')  String orderId, @JsonKey(name: 'order_number')  String orderNumber, @JsonKey(name: 'order_type')  String orderType, @JsonKey(name: 'table_label')  String? tableLabel,  String status,  List<KotItem> items, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _KitchenOrderTicket():
return $default(_that.id,_that.orderId,_that.orderNumber,_that.orderType,_that.tableLabel,_that.status,_that.items,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(name: 'order_id')  String orderId, @JsonKey(name: 'order_number')  String orderNumber, @JsonKey(name: 'order_type')  String orderType, @JsonKey(name: 'table_label')  String? tableLabel,  String status,  List<KotItem> items, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _KitchenOrderTicket() when $default != null:
return $default(_that.id,_that.orderId,_that.orderNumber,_that.orderType,_that.tableLabel,_that.status,_that.items,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _KitchenOrderTicket implements KitchenOrderTicket {
  const _KitchenOrderTicket({required this.id, @JsonKey(name: 'order_id') required this.orderId, @JsonKey(name: 'order_number') this.orderNumber = '', @JsonKey(name: 'order_type') this.orderType = 'dine_in', @JsonKey(name: 'table_label') this.tableLabel, this.status = 'PENDING', final  List<KotItem> items = const [], @JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'updated_at') this.updatedAt}): _items = items;
  factory _KitchenOrderTicket.fromJson(Map<String, dynamic> json) => _$KitchenOrderTicketFromJson(json);

@override final  String id;
@override@JsonKey(name: 'order_id') final  String orderId;
@override@JsonKey(name: 'order_number') final  String orderNumber;
@override@JsonKey(name: 'order_type') final  String orderType;
@override@JsonKey(name: 'table_label') final  String? tableLabel;
@override@JsonKey() final  String status;
 final  List<KotItem> _items;
@override@JsonKey() List<KotItem> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override@JsonKey(name: 'created_at') final  DateTime? createdAt;
@override@JsonKey(name: 'updated_at') final  DateTime? updatedAt;

/// Create a copy of KitchenOrderTicket
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$KitchenOrderTicketCopyWith<_KitchenOrderTicket> get copyWith => __$KitchenOrderTicketCopyWithImpl<_KitchenOrderTicket>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$KitchenOrderTicketToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _KitchenOrderTicket&&(identical(other.id, id) || other.id == id)&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.orderNumber, orderNumber) || other.orderNumber == orderNumber)&&(identical(other.orderType, orderType) || other.orderType == orderType)&&(identical(other.tableLabel, tableLabel) || other.tableLabel == tableLabel)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,orderId,orderNumber,orderType,tableLabel,status,const DeepCollectionEquality().hash(_items),createdAt,updatedAt);

@override
String toString() {
  return 'KitchenOrderTicket(id: $id, orderId: $orderId, orderNumber: $orderNumber, orderType: $orderType, tableLabel: $tableLabel, status: $status, items: $items, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$KitchenOrderTicketCopyWith<$Res> implements $KitchenOrderTicketCopyWith<$Res> {
  factory _$KitchenOrderTicketCopyWith(_KitchenOrderTicket value, $Res Function(_KitchenOrderTicket) _then) = __$KitchenOrderTicketCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(name: 'order_id') String orderId,@JsonKey(name: 'order_number') String orderNumber,@JsonKey(name: 'order_type') String orderType,@JsonKey(name: 'table_label') String? tableLabel, String status, List<KotItem> items,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'updated_at') DateTime? updatedAt
});




}
/// @nodoc
class __$KitchenOrderTicketCopyWithImpl<$Res>
    implements _$KitchenOrderTicketCopyWith<$Res> {
  __$KitchenOrderTicketCopyWithImpl(this._self, this._then);

  final _KitchenOrderTicket _self;
  final $Res Function(_KitchenOrderTicket) _then;

/// Create a copy of KitchenOrderTicket
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? orderId = null,Object? orderNumber = null,Object? orderType = null,Object? tableLabel = freezed,Object? status = null,Object? items = null,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_KitchenOrderTicket(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as String,orderNumber: null == orderNumber ? _self.orderNumber : orderNumber // ignore: cast_nullable_to_non_nullable
as String,orderType: null == orderType ? _self.orderType : orderType // ignore: cast_nullable_to_non_nullable
as String,tableLabel: freezed == tableLabel ? _self.tableLabel : tableLabel // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<KotItem>,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}


/// @nodoc
mixin _$KotItem {

 String get id;@JsonKey(name: 'product_name') String get productName; int get quantity; String? get notes;
/// Create a copy of KotItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$KotItemCopyWith<KotItem> get copyWith => _$KotItemCopyWithImpl<KotItem>(this as KotItem, _$identity);

  /// Serializes this KotItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KotItem&&(identical(other.id, id) || other.id == id)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.notes, notes) || other.notes == notes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,productName,quantity,notes);

@override
String toString() {
  return 'KotItem(id: $id, productName: $productName, quantity: $quantity, notes: $notes)';
}


}

/// @nodoc
abstract mixin class $KotItemCopyWith<$Res>  {
  factory $KotItemCopyWith(KotItem value, $Res Function(KotItem) _then) = _$KotItemCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(name: 'product_name') String productName, int quantity, String? notes
});




}
/// @nodoc
class _$KotItemCopyWithImpl<$Res>
    implements $KotItemCopyWith<$Res> {
  _$KotItemCopyWithImpl(this._self, this._then);

  final KotItem _self;
  final $Res Function(KotItem) _then;

/// Create a copy of KotItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? productName = null,Object? quantity = null,Object? notes = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,productName: null == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [KotItem].
extension KotItemPatterns on KotItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _KotItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _KotItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _KotItem value)  $default,){
final _that = this;
switch (_that) {
case _KotItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _KotItem value)?  $default,){
final _that = this;
switch (_that) {
case _KotItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'product_name')  String productName,  int quantity,  String? notes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _KotItem() when $default != null:
return $default(_that.id,_that.productName,_that.quantity,_that.notes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'product_name')  String productName,  int quantity,  String? notes)  $default,) {final _that = this;
switch (_that) {
case _KotItem():
return $default(_that.id,_that.productName,_that.quantity,_that.notes);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(name: 'product_name')  String productName,  int quantity,  String? notes)?  $default,) {final _that = this;
switch (_that) {
case _KotItem() when $default != null:
return $default(_that.id,_that.productName,_that.quantity,_that.notes);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _KotItem implements KotItem {
  const _KotItem({required this.id, @JsonKey(name: 'product_name') required this.productName, this.quantity = 1, this.notes});
  factory _KotItem.fromJson(Map<String, dynamic> json) => _$KotItemFromJson(json);

@override final  String id;
@override@JsonKey(name: 'product_name') final  String productName;
@override@JsonKey() final  int quantity;
@override final  String? notes;

/// Create a copy of KotItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$KotItemCopyWith<_KotItem> get copyWith => __$KotItemCopyWithImpl<_KotItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$KotItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _KotItem&&(identical(other.id, id) || other.id == id)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.notes, notes) || other.notes == notes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,productName,quantity,notes);

@override
String toString() {
  return 'KotItem(id: $id, productName: $productName, quantity: $quantity, notes: $notes)';
}


}

/// @nodoc
abstract mixin class _$KotItemCopyWith<$Res> implements $KotItemCopyWith<$Res> {
  factory _$KotItemCopyWith(_KotItem value, $Res Function(_KotItem) _then) = __$KotItemCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(name: 'product_name') String productName, int quantity, String? notes
});




}
/// @nodoc
class __$KotItemCopyWithImpl<$Res>
    implements _$KotItemCopyWith<$Res> {
  __$KotItemCopyWithImpl(this._self, this._then);

  final _KotItem _self;
  final $Res Function(_KotItem) _then;

/// Create a copy of KotItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? productName = null,Object? quantity = null,Object? notes = freezed,}) {
  return _then(_KotItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,productName: null == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$KotStatusUpdate {

 String get status;
/// Create a copy of KotStatusUpdate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$KotStatusUpdateCopyWith<KotStatusUpdate> get copyWith => _$KotStatusUpdateCopyWithImpl<KotStatusUpdate>(this as KotStatusUpdate, _$identity);

  /// Serializes this KotStatusUpdate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KotStatusUpdate&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status);

@override
String toString() {
  return 'KotStatusUpdate(status: $status)';
}


}

/// @nodoc
abstract mixin class $KotStatusUpdateCopyWith<$Res>  {
  factory $KotStatusUpdateCopyWith(KotStatusUpdate value, $Res Function(KotStatusUpdate) _then) = _$KotStatusUpdateCopyWithImpl;
@useResult
$Res call({
 String status
});




}
/// @nodoc
class _$KotStatusUpdateCopyWithImpl<$Res>
    implements $KotStatusUpdateCopyWith<$Res> {
  _$KotStatusUpdateCopyWithImpl(this._self, this._then);

  final KotStatusUpdate _self;
  final $Res Function(KotStatusUpdate) _then;

/// Create a copy of KotStatusUpdate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [KotStatusUpdate].
extension KotStatusUpdatePatterns on KotStatusUpdate {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _KotStatusUpdate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _KotStatusUpdate() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _KotStatusUpdate value)  $default,){
final _that = this;
switch (_that) {
case _KotStatusUpdate():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _KotStatusUpdate value)?  $default,){
final _that = this;
switch (_that) {
case _KotStatusUpdate() when $default != null:
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
case _KotStatusUpdate() when $default != null:
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
case _KotStatusUpdate():
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
case _KotStatusUpdate() when $default != null:
return $default(_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _KotStatusUpdate implements KotStatusUpdate {
  const _KotStatusUpdate({required this.status});
  factory _KotStatusUpdate.fromJson(Map<String, dynamic> json) => _$KotStatusUpdateFromJson(json);

@override final  String status;

/// Create a copy of KotStatusUpdate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$KotStatusUpdateCopyWith<_KotStatusUpdate> get copyWith => __$KotStatusUpdateCopyWithImpl<_KotStatusUpdate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$KotStatusUpdateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _KotStatusUpdate&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status);

@override
String toString() {
  return 'KotStatusUpdate(status: $status)';
}


}

/// @nodoc
abstract mixin class _$KotStatusUpdateCopyWith<$Res> implements $KotStatusUpdateCopyWith<$Res> {
  factory _$KotStatusUpdateCopyWith(_KotStatusUpdate value, $Res Function(_KotStatusUpdate) _then) = __$KotStatusUpdateCopyWithImpl;
@override @useResult
$Res call({
 String status
});




}
/// @nodoc
class __$KotStatusUpdateCopyWithImpl<$Res>
    implements _$KotStatusUpdateCopyWith<$Res> {
  __$KotStatusUpdateCopyWithImpl(this._self, this._then);

  final _KotStatusUpdate _self;
  final $Res Function(_KotStatusUpdate) _then;

/// Create a copy of KotStatusUpdate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,}) {
  return _then(_KotStatusUpdate(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
