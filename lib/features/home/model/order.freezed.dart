// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Order {

 String get id;@JsonKey(name: 'store_id') String get storeId;@JsonKey(name: 'order_number') String get orderNumber;@JsonKey(name: 'employee_id') String? get employeeId;@JsonKey(name: 'terminal_id') String? get terminalId;@JsonKey(name: 'table_number') int? get tableNumber;@JsonKey(name: 'guest_id') String? get guestId;@JsonKey(name: 'shift_id') String? get shiftId;@JsonKey(name: 'order_type') String get orderType; String get status; String get channel;@JsonKey(name: 'gross_amount') double get subtotal;@JsonKey(name: 'tax_amount') double get taxAmount;@JsonKey(name: 'discount_amount') double get discountAmount;@JsonKey(name: 'service_charge') double get serviceCharge;@JsonKey(name: 'tip_amount') double get tipAmount;@JsonKey(name: 'net_amount') double get grandTotal;@JsonKey(name: 'payment_status') String get paymentStatus; String? get notes;@JsonKey(name: 'cancel_reason') String? get cancelReason;@JsonKey(name: 'created_at') DateTime? get createdAt;@JsonKey(name: 'updated_at') DateTime? get updatedAt; List<OrderItem> get items;
/// Create a copy of Order
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderCopyWith<Order> get copyWith => _$OrderCopyWithImpl<Order>(this as Order, _$identity);

  /// Serializes this Order to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Order&&(identical(other.id, id) || other.id == id)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.orderNumber, orderNumber) || other.orderNumber == orderNumber)&&(identical(other.employeeId, employeeId) || other.employeeId == employeeId)&&(identical(other.terminalId, terminalId) || other.terminalId == terminalId)&&(identical(other.tableNumber, tableNumber) || other.tableNumber == tableNumber)&&(identical(other.guestId, guestId) || other.guestId == guestId)&&(identical(other.shiftId, shiftId) || other.shiftId == shiftId)&&(identical(other.orderType, orderType) || other.orderType == orderType)&&(identical(other.status, status) || other.status == status)&&(identical(other.channel, channel) || other.channel == channel)&&(identical(other.subtotal, subtotal) || other.subtotal == subtotal)&&(identical(other.taxAmount, taxAmount) || other.taxAmount == taxAmount)&&(identical(other.discountAmount, discountAmount) || other.discountAmount == discountAmount)&&(identical(other.serviceCharge, serviceCharge) || other.serviceCharge == serviceCharge)&&(identical(other.tipAmount, tipAmount) || other.tipAmount == tipAmount)&&(identical(other.grandTotal, grandTotal) || other.grandTotal == grandTotal)&&(identical(other.paymentStatus, paymentStatus) || other.paymentStatus == paymentStatus)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.cancelReason, cancelReason) || other.cancelReason == cancelReason)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&const DeepCollectionEquality().equals(other.items, items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,storeId,orderNumber,employeeId,terminalId,tableNumber,guestId,shiftId,orderType,status,channel,subtotal,taxAmount,discountAmount,serviceCharge,tipAmount,grandTotal,paymentStatus,notes,cancelReason,createdAt,updatedAt,const DeepCollectionEquality().hash(items)]);

@override
String toString() {
  return 'Order(id: $id, storeId: $storeId, orderNumber: $orderNumber, employeeId: $employeeId, terminalId: $terminalId, tableNumber: $tableNumber, guestId: $guestId, shiftId: $shiftId, orderType: $orderType, status: $status, channel: $channel, subtotal: $subtotal, taxAmount: $taxAmount, discountAmount: $discountAmount, serviceCharge: $serviceCharge, tipAmount: $tipAmount, grandTotal: $grandTotal, paymentStatus: $paymentStatus, notes: $notes, cancelReason: $cancelReason, createdAt: $createdAt, updatedAt: $updatedAt, items: $items)';
}


}

/// @nodoc
abstract mixin class $OrderCopyWith<$Res>  {
  factory $OrderCopyWith(Order value, $Res Function(Order) _then) = _$OrderCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(name: 'store_id') String storeId,@JsonKey(name: 'order_number') String orderNumber,@JsonKey(name: 'employee_id') String? employeeId,@JsonKey(name: 'terminal_id') String? terminalId,@JsonKey(name: 'table_number') int? tableNumber,@JsonKey(name: 'guest_id') String? guestId,@JsonKey(name: 'shift_id') String? shiftId,@JsonKey(name: 'order_type') String orderType, String status, String channel,@JsonKey(name: 'gross_amount') double subtotal,@JsonKey(name: 'tax_amount') double taxAmount,@JsonKey(name: 'discount_amount') double discountAmount,@JsonKey(name: 'service_charge') double serviceCharge,@JsonKey(name: 'tip_amount') double tipAmount,@JsonKey(name: 'net_amount') double grandTotal,@JsonKey(name: 'payment_status') String paymentStatus, String? notes,@JsonKey(name: 'cancel_reason') String? cancelReason,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'updated_at') DateTime? updatedAt, List<OrderItem> items
});




}
/// @nodoc
class _$OrderCopyWithImpl<$Res>
    implements $OrderCopyWith<$Res> {
  _$OrderCopyWithImpl(this._self, this._then);

  final Order _self;
  final $Res Function(Order) _then;

/// Create a copy of Order
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? storeId = null,Object? orderNumber = null,Object? employeeId = freezed,Object? terminalId = freezed,Object? tableNumber = freezed,Object? guestId = freezed,Object? shiftId = freezed,Object? orderType = null,Object? status = null,Object? channel = null,Object? subtotal = null,Object? taxAmount = null,Object? discountAmount = null,Object? serviceCharge = null,Object? tipAmount = null,Object? grandTotal = null,Object? paymentStatus = null,Object? notes = freezed,Object? cancelReason = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? items = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,orderNumber: null == orderNumber ? _self.orderNumber : orderNumber // ignore: cast_nullable_to_non_nullable
as String,employeeId: freezed == employeeId ? _self.employeeId : employeeId // ignore: cast_nullable_to_non_nullable
as String?,terminalId: freezed == terminalId ? _self.terminalId : terminalId // ignore: cast_nullable_to_non_nullable
as String?,tableNumber: freezed == tableNumber ? _self.tableNumber : tableNumber // ignore: cast_nullable_to_non_nullable
as int?,guestId: freezed == guestId ? _self.guestId : guestId // ignore: cast_nullable_to_non_nullable
as String?,shiftId: freezed == shiftId ? _self.shiftId : shiftId // ignore: cast_nullable_to_non_nullable
as String?,orderType: null == orderType ? _self.orderType : orderType // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,channel: null == channel ? _self.channel : channel // ignore: cast_nullable_to_non_nullable
as String,subtotal: null == subtotal ? _self.subtotal : subtotal // ignore: cast_nullable_to_non_nullable
as double,taxAmount: null == taxAmount ? _self.taxAmount : taxAmount // ignore: cast_nullable_to_non_nullable
as double,discountAmount: null == discountAmount ? _self.discountAmount : discountAmount // ignore: cast_nullable_to_non_nullable
as double,serviceCharge: null == serviceCharge ? _self.serviceCharge : serviceCharge // ignore: cast_nullable_to_non_nullable
as double,tipAmount: null == tipAmount ? _self.tipAmount : tipAmount // ignore: cast_nullable_to_non_nullable
as double,grandTotal: null == grandTotal ? _self.grandTotal : grandTotal // ignore: cast_nullable_to_non_nullable
as double,paymentStatus: null == paymentStatus ? _self.paymentStatus : paymentStatus // ignore: cast_nullable_to_non_nullable
as String,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,cancelReason: freezed == cancelReason ? _self.cancelReason : cancelReason // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<OrderItem>,
  ));
}

}


/// Adds pattern-matching-related methods to [Order].
extension OrderPatterns on Order {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Order value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Order() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Order value)  $default,){
final _that = this;
switch (_that) {
case _Order():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Order value)?  $default,){
final _that = this;
switch (_that) {
case _Order() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'store_id')  String storeId, @JsonKey(name: 'order_number')  String orderNumber, @JsonKey(name: 'employee_id')  String? employeeId, @JsonKey(name: 'terminal_id')  String? terminalId, @JsonKey(name: 'table_number')  int? tableNumber, @JsonKey(name: 'guest_id')  String? guestId, @JsonKey(name: 'shift_id')  String? shiftId, @JsonKey(name: 'order_type')  String orderType,  String status,  String channel, @JsonKey(name: 'gross_amount')  double subtotal, @JsonKey(name: 'tax_amount')  double taxAmount, @JsonKey(name: 'discount_amount')  double discountAmount, @JsonKey(name: 'service_charge')  double serviceCharge, @JsonKey(name: 'tip_amount')  double tipAmount, @JsonKey(name: 'net_amount')  double grandTotal, @JsonKey(name: 'payment_status')  String paymentStatus,  String? notes, @JsonKey(name: 'cancel_reason')  String? cancelReason, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt,  List<OrderItem> items)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Order() when $default != null:
return $default(_that.id,_that.storeId,_that.orderNumber,_that.employeeId,_that.terminalId,_that.tableNumber,_that.guestId,_that.shiftId,_that.orderType,_that.status,_that.channel,_that.subtotal,_that.taxAmount,_that.discountAmount,_that.serviceCharge,_that.tipAmount,_that.grandTotal,_that.paymentStatus,_that.notes,_that.cancelReason,_that.createdAt,_that.updatedAt,_that.items);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'store_id')  String storeId, @JsonKey(name: 'order_number')  String orderNumber, @JsonKey(name: 'employee_id')  String? employeeId, @JsonKey(name: 'terminal_id')  String? terminalId, @JsonKey(name: 'table_number')  int? tableNumber, @JsonKey(name: 'guest_id')  String? guestId, @JsonKey(name: 'shift_id')  String? shiftId, @JsonKey(name: 'order_type')  String orderType,  String status,  String channel, @JsonKey(name: 'gross_amount')  double subtotal, @JsonKey(name: 'tax_amount')  double taxAmount, @JsonKey(name: 'discount_amount')  double discountAmount, @JsonKey(name: 'service_charge')  double serviceCharge, @JsonKey(name: 'tip_amount')  double tipAmount, @JsonKey(name: 'net_amount')  double grandTotal, @JsonKey(name: 'payment_status')  String paymentStatus,  String? notes, @JsonKey(name: 'cancel_reason')  String? cancelReason, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt,  List<OrderItem> items)  $default,) {final _that = this;
switch (_that) {
case _Order():
return $default(_that.id,_that.storeId,_that.orderNumber,_that.employeeId,_that.terminalId,_that.tableNumber,_that.guestId,_that.shiftId,_that.orderType,_that.status,_that.channel,_that.subtotal,_that.taxAmount,_that.discountAmount,_that.serviceCharge,_that.tipAmount,_that.grandTotal,_that.paymentStatus,_that.notes,_that.cancelReason,_that.createdAt,_that.updatedAt,_that.items);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(name: 'store_id')  String storeId, @JsonKey(name: 'order_number')  String orderNumber, @JsonKey(name: 'employee_id')  String? employeeId, @JsonKey(name: 'terminal_id')  String? terminalId, @JsonKey(name: 'table_number')  int? tableNumber, @JsonKey(name: 'guest_id')  String? guestId, @JsonKey(name: 'shift_id')  String? shiftId, @JsonKey(name: 'order_type')  String orderType,  String status,  String channel, @JsonKey(name: 'gross_amount')  double subtotal, @JsonKey(name: 'tax_amount')  double taxAmount, @JsonKey(name: 'discount_amount')  double discountAmount, @JsonKey(name: 'service_charge')  double serviceCharge, @JsonKey(name: 'tip_amount')  double tipAmount, @JsonKey(name: 'net_amount')  double grandTotal, @JsonKey(name: 'payment_status')  String paymentStatus,  String? notes, @JsonKey(name: 'cancel_reason')  String? cancelReason, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt,  List<OrderItem> items)?  $default,) {final _that = this;
switch (_that) {
case _Order() when $default != null:
return $default(_that.id,_that.storeId,_that.orderNumber,_that.employeeId,_that.terminalId,_that.tableNumber,_that.guestId,_that.shiftId,_that.orderType,_that.status,_that.channel,_that.subtotal,_that.taxAmount,_that.discountAmount,_that.serviceCharge,_that.tipAmount,_that.grandTotal,_that.paymentStatus,_that.notes,_that.cancelReason,_that.createdAt,_that.updatedAt,_that.items);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Order implements Order {
  const _Order({required this.id, @JsonKey(name: 'store_id') required this.storeId, @JsonKey(name: 'order_number') this.orderNumber = '', @JsonKey(name: 'employee_id') this.employeeId, @JsonKey(name: 'terminal_id') this.terminalId, @JsonKey(name: 'table_number') this.tableNumber, @JsonKey(name: 'guest_id') this.guestId, @JsonKey(name: 'shift_id') this.shiftId, @JsonKey(name: 'order_type') this.orderType = 'dine_in', this.status = 'open', this.channel = 'pos', @JsonKey(name: 'gross_amount') this.subtotal = 0, @JsonKey(name: 'tax_amount') this.taxAmount = 0, @JsonKey(name: 'discount_amount') this.discountAmount = 0, @JsonKey(name: 'service_charge') this.serviceCharge = 0, @JsonKey(name: 'tip_amount') this.tipAmount = 0, @JsonKey(name: 'net_amount') this.grandTotal = 0, @JsonKey(name: 'payment_status') this.paymentStatus = 'pending', this.notes, @JsonKey(name: 'cancel_reason') this.cancelReason, @JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'updated_at') this.updatedAt, final  List<OrderItem> items = const []}): _items = items;
  factory _Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);

@override final  String id;
@override@JsonKey(name: 'store_id') final  String storeId;
@override@JsonKey(name: 'order_number') final  String orderNumber;
@override@JsonKey(name: 'employee_id') final  String? employeeId;
@override@JsonKey(name: 'terminal_id') final  String? terminalId;
@override@JsonKey(name: 'table_number') final  int? tableNumber;
@override@JsonKey(name: 'guest_id') final  String? guestId;
@override@JsonKey(name: 'shift_id') final  String? shiftId;
@override@JsonKey(name: 'order_type') final  String orderType;
@override@JsonKey() final  String status;
@override@JsonKey() final  String channel;
@override@JsonKey(name: 'gross_amount') final  double subtotal;
@override@JsonKey(name: 'tax_amount') final  double taxAmount;
@override@JsonKey(name: 'discount_amount') final  double discountAmount;
@override@JsonKey(name: 'service_charge') final  double serviceCharge;
@override@JsonKey(name: 'tip_amount') final  double tipAmount;
@override@JsonKey(name: 'net_amount') final  double grandTotal;
@override@JsonKey(name: 'payment_status') final  String paymentStatus;
@override final  String? notes;
@override@JsonKey(name: 'cancel_reason') final  String? cancelReason;
@override@JsonKey(name: 'created_at') final  DateTime? createdAt;
@override@JsonKey(name: 'updated_at') final  DateTime? updatedAt;
 final  List<OrderItem> _items;
@override@JsonKey() List<OrderItem> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}


/// Create a copy of Order
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderCopyWith<_Order> get copyWith => __$OrderCopyWithImpl<_Order>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrderToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Order&&(identical(other.id, id) || other.id == id)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.orderNumber, orderNumber) || other.orderNumber == orderNumber)&&(identical(other.employeeId, employeeId) || other.employeeId == employeeId)&&(identical(other.terminalId, terminalId) || other.terminalId == terminalId)&&(identical(other.tableNumber, tableNumber) || other.tableNumber == tableNumber)&&(identical(other.guestId, guestId) || other.guestId == guestId)&&(identical(other.shiftId, shiftId) || other.shiftId == shiftId)&&(identical(other.orderType, orderType) || other.orderType == orderType)&&(identical(other.status, status) || other.status == status)&&(identical(other.channel, channel) || other.channel == channel)&&(identical(other.subtotal, subtotal) || other.subtotal == subtotal)&&(identical(other.taxAmount, taxAmount) || other.taxAmount == taxAmount)&&(identical(other.discountAmount, discountAmount) || other.discountAmount == discountAmount)&&(identical(other.serviceCharge, serviceCharge) || other.serviceCharge == serviceCharge)&&(identical(other.tipAmount, tipAmount) || other.tipAmount == tipAmount)&&(identical(other.grandTotal, grandTotal) || other.grandTotal == grandTotal)&&(identical(other.paymentStatus, paymentStatus) || other.paymentStatus == paymentStatus)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.cancelReason, cancelReason) || other.cancelReason == cancelReason)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&const DeepCollectionEquality().equals(other._items, _items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,storeId,orderNumber,employeeId,terminalId,tableNumber,guestId,shiftId,orderType,status,channel,subtotal,taxAmount,discountAmount,serviceCharge,tipAmount,grandTotal,paymentStatus,notes,cancelReason,createdAt,updatedAt,const DeepCollectionEquality().hash(_items)]);

@override
String toString() {
  return 'Order(id: $id, storeId: $storeId, orderNumber: $orderNumber, employeeId: $employeeId, terminalId: $terminalId, tableNumber: $tableNumber, guestId: $guestId, shiftId: $shiftId, orderType: $orderType, status: $status, channel: $channel, subtotal: $subtotal, taxAmount: $taxAmount, discountAmount: $discountAmount, serviceCharge: $serviceCharge, tipAmount: $tipAmount, grandTotal: $grandTotal, paymentStatus: $paymentStatus, notes: $notes, cancelReason: $cancelReason, createdAt: $createdAt, updatedAt: $updatedAt, items: $items)';
}


}

/// @nodoc
abstract mixin class _$OrderCopyWith<$Res> implements $OrderCopyWith<$Res> {
  factory _$OrderCopyWith(_Order value, $Res Function(_Order) _then) = __$OrderCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(name: 'store_id') String storeId,@JsonKey(name: 'order_number') String orderNumber,@JsonKey(name: 'employee_id') String? employeeId,@JsonKey(name: 'terminal_id') String? terminalId,@JsonKey(name: 'table_number') int? tableNumber,@JsonKey(name: 'guest_id') String? guestId,@JsonKey(name: 'shift_id') String? shiftId,@JsonKey(name: 'order_type') String orderType, String status, String channel,@JsonKey(name: 'gross_amount') double subtotal,@JsonKey(name: 'tax_amount') double taxAmount,@JsonKey(name: 'discount_amount') double discountAmount,@JsonKey(name: 'service_charge') double serviceCharge,@JsonKey(name: 'tip_amount') double tipAmount,@JsonKey(name: 'net_amount') double grandTotal,@JsonKey(name: 'payment_status') String paymentStatus, String? notes,@JsonKey(name: 'cancel_reason') String? cancelReason,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'updated_at') DateTime? updatedAt, List<OrderItem> items
});




}
/// @nodoc
class __$OrderCopyWithImpl<$Res>
    implements _$OrderCopyWith<$Res> {
  __$OrderCopyWithImpl(this._self, this._then);

  final _Order _self;
  final $Res Function(_Order) _then;

/// Create a copy of Order
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? storeId = null,Object? orderNumber = null,Object? employeeId = freezed,Object? terminalId = freezed,Object? tableNumber = freezed,Object? guestId = freezed,Object? shiftId = freezed,Object? orderType = null,Object? status = null,Object? channel = null,Object? subtotal = null,Object? taxAmount = null,Object? discountAmount = null,Object? serviceCharge = null,Object? tipAmount = null,Object? grandTotal = null,Object? paymentStatus = null,Object? notes = freezed,Object? cancelReason = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? items = null,}) {
  return _then(_Order(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,orderNumber: null == orderNumber ? _self.orderNumber : orderNumber // ignore: cast_nullable_to_non_nullable
as String,employeeId: freezed == employeeId ? _self.employeeId : employeeId // ignore: cast_nullable_to_non_nullable
as String?,terminalId: freezed == terminalId ? _self.terminalId : terminalId // ignore: cast_nullable_to_non_nullable
as String?,tableNumber: freezed == tableNumber ? _self.tableNumber : tableNumber // ignore: cast_nullable_to_non_nullable
as int?,guestId: freezed == guestId ? _self.guestId : guestId // ignore: cast_nullable_to_non_nullable
as String?,shiftId: freezed == shiftId ? _self.shiftId : shiftId // ignore: cast_nullable_to_non_nullable
as String?,orderType: null == orderType ? _self.orderType : orderType // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,channel: null == channel ? _self.channel : channel // ignore: cast_nullable_to_non_nullable
as String,subtotal: null == subtotal ? _self.subtotal : subtotal // ignore: cast_nullable_to_non_nullable
as double,taxAmount: null == taxAmount ? _self.taxAmount : taxAmount // ignore: cast_nullable_to_non_nullable
as double,discountAmount: null == discountAmount ? _self.discountAmount : discountAmount // ignore: cast_nullable_to_non_nullable
as double,serviceCharge: null == serviceCharge ? _self.serviceCharge : serviceCharge // ignore: cast_nullable_to_non_nullable
as double,tipAmount: null == tipAmount ? _self.tipAmount : tipAmount // ignore: cast_nullable_to_non_nullable
as double,grandTotal: null == grandTotal ? _self.grandTotal : grandTotal // ignore: cast_nullable_to_non_nullable
as double,paymentStatus: null == paymentStatus ? _self.paymentStatus : paymentStatus // ignore: cast_nullable_to_non_nullable
as String,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,cancelReason: freezed == cancelReason ? _self.cancelReason : cancelReason // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<OrderItem>,
  ));
}


}


/// @nodoc
mixin _$OrderItem {

 String get id;@JsonKey(name: 'order_id') String get orderId;@JsonKey(name: 'product_id') String get productId;@JsonKey(name: 'product_name') String get productName; int get quantity; double get price;@JsonKey(name: 'tax_amount') double get taxAmount;@JsonKey(name: 'discount_amount') double get discountAmount; double get total; String get status; String? get notes;@JsonKey(name: 'kitchen_status') String? get kitchenStatus;@JsonKey(name: 'cancel_reason') String? get cancelReason; List<OrderItemModifier> get modifiers;
/// Create a copy of OrderItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderItemCopyWith<OrderItem> get copyWith => _$OrderItemCopyWithImpl<OrderItem>(this as OrderItem, _$identity);

  /// Serializes this OrderItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderItem&&(identical(other.id, id) || other.id == id)&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.price, price) || other.price == price)&&(identical(other.taxAmount, taxAmount) || other.taxAmount == taxAmount)&&(identical(other.discountAmount, discountAmount) || other.discountAmount == discountAmount)&&(identical(other.total, total) || other.total == total)&&(identical(other.status, status) || other.status == status)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.kitchenStatus, kitchenStatus) || other.kitchenStatus == kitchenStatus)&&(identical(other.cancelReason, cancelReason) || other.cancelReason == cancelReason)&&const DeepCollectionEquality().equals(other.modifiers, modifiers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,orderId,productId,productName,quantity,price,taxAmount,discountAmount,total,status,notes,kitchenStatus,cancelReason,const DeepCollectionEquality().hash(modifiers));

@override
String toString() {
  return 'OrderItem(id: $id, orderId: $orderId, productId: $productId, productName: $productName, quantity: $quantity, price: $price, taxAmount: $taxAmount, discountAmount: $discountAmount, total: $total, status: $status, notes: $notes, kitchenStatus: $kitchenStatus, cancelReason: $cancelReason, modifiers: $modifiers)';
}


}

/// @nodoc
abstract mixin class $OrderItemCopyWith<$Res>  {
  factory $OrderItemCopyWith(OrderItem value, $Res Function(OrderItem) _then) = _$OrderItemCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(name: 'order_id') String orderId,@JsonKey(name: 'product_id') String productId,@JsonKey(name: 'product_name') String productName, int quantity, double price,@JsonKey(name: 'tax_amount') double taxAmount,@JsonKey(name: 'discount_amount') double discountAmount, double total, String status, String? notes,@JsonKey(name: 'kitchen_status') String? kitchenStatus,@JsonKey(name: 'cancel_reason') String? cancelReason, List<OrderItemModifier> modifiers
});




}
/// @nodoc
class _$OrderItemCopyWithImpl<$Res>
    implements $OrderItemCopyWith<$Res> {
  _$OrderItemCopyWithImpl(this._self, this._then);

  final OrderItem _self;
  final $Res Function(OrderItem) _then;

/// Create a copy of OrderItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? orderId = null,Object? productId = null,Object? productName = null,Object? quantity = null,Object? price = null,Object? taxAmount = null,Object? discountAmount = null,Object? total = null,Object? status = null,Object? notes = freezed,Object? kitchenStatus = freezed,Object? cancelReason = freezed,Object? modifiers = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as String,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,productName: null == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,taxAmount: null == taxAmount ? _self.taxAmount : taxAmount // ignore: cast_nullable_to_non_nullable
as double,discountAmount: null == discountAmount ? _self.discountAmount : discountAmount // ignore: cast_nullable_to_non_nullable
as double,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as double,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,kitchenStatus: freezed == kitchenStatus ? _self.kitchenStatus : kitchenStatus // ignore: cast_nullable_to_non_nullable
as String?,cancelReason: freezed == cancelReason ? _self.cancelReason : cancelReason // ignore: cast_nullable_to_non_nullable
as String?,modifiers: null == modifiers ? _self.modifiers : modifiers // ignore: cast_nullable_to_non_nullable
as List<OrderItemModifier>,
  ));
}

}


/// Adds pattern-matching-related methods to [OrderItem].
extension OrderItemPatterns on OrderItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderItem value)  $default,){
final _that = this;
switch (_that) {
case _OrderItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderItem value)?  $default,){
final _that = this;
switch (_that) {
case _OrderItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'order_id')  String orderId, @JsonKey(name: 'product_id')  String productId, @JsonKey(name: 'product_name')  String productName,  int quantity,  double price, @JsonKey(name: 'tax_amount')  double taxAmount, @JsonKey(name: 'discount_amount')  double discountAmount,  double total,  String status,  String? notes, @JsonKey(name: 'kitchen_status')  String? kitchenStatus, @JsonKey(name: 'cancel_reason')  String? cancelReason,  List<OrderItemModifier> modifiers)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderItem() when $default != null:
return $default(_that.id,_that.orderId,_that.productId,_that.productName,_that.quantity,_that.price,_that.taxAmount,_that.discountAmount,_that.total,_that.status,_that.notes,_that.kitchenStatus,_that.cancelReason,_that.modifiers);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'order_id')  String orderId, @JsonKey(name: 'product_id')  String productId, @JsonKey(name: 'product_name')  String productName,  int quantity,  double price, @JsonKey(name: 'tax_amount')  double taxAmount, @JsonKey(name: 'discount_amount')  double discountAmount,  double total,  String status,  String? notes, @JsonKey(name: 'kitchen_status')  String? kitchenStatus, @JsonKey(name: 'cancel_reason')  String? cancelReason,  List<OrderItemModifier> modifiers)  $default,) {final _that = this;
switch (_that) {
case _OrderItem():
return $default(_that.id,_that.orderId,_that.productId,_that.productName,_that.quantity,_that.price,_that.taxAmount,_that.discountAmount,_that.total,_that.status,_that.notes,_that.kitchenStatus,_that.cancelReason,_that.modifiers);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(name: 'order_id')  String orderId, @JsonKey(name: 'product_id')  String productId, @JsonKey(name: 'product_name')  String productName,  int quantity,  double price, @JsonKey(name: 'tax_amount')  double taxAmount, @JsonKey(name: 'discount_amount')  double discountAmount,  double total,  String status,  String? notes, @JsonKey(name: 'kitchen_status')  String? kitchenStatus, @JsonKey(name: 'cancel_reason')  String? cancelReason,  List<OrderItemModifier> modifiers)?  $default,) {final _that = this;
switch (_that) {
case _OrderItem() when $default != null:
return $default(_that.id,_that.orderId,_that.productId,_that.productName,_that.quantity,_that.price,_that.taxAmount,_that.discountAmount,_that.total,_that.status,_that.notes,_that.kitchenStatus,_that.cancelReason,_that.modifiers);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OrderItem implements OrderItem {
  const _OrderItem({required this.id, @JsonKey(name: 'order_id') required this.orderId, @JsonKey(name: 'product_id') this.productId = '', @JsonKey(name: 'product_name') this.productName = '', this.quantity = 1, this.price = 0, @JsonKey(name: 'tax_amount') this.taxAmount = 0, @JsonKey(name: 'discount_amount') this.discountAmount = 0, this.total = 0, this.status = 'active', this.notes, @JsonKey(name: 'kitchen_status') this.kitchenStatus, @JsonKey(name: 'cancel_reason') this.cancelReason, final  List<OrderItemModifier> modifiers = const []}): _modifiers = modifiers;
  factory _OrderItem.fromJson(Map<String, dynamic> json) => _$OrderItemFromJson(json);

@override final  String id;
@override@JsonKey(name: 'order_id') final  String orderId;
@override@JsonKey(name: 'product_id') final  String productId;
@override@JsonKey(name: 'product_name') final  String productName;
@override@JsonKey() final  int quantity;
@override@JsonKey() final  double price;
@override@JsonKey(name: 'tax_amount') final  double taxAmount;
@override@JsonKey(name: 'discount_amount') final  double discountAmount;
@override@JsonKey() final  double total;
@override@JsonKey() final  String status;
@override final  String? notes;
@override@JsonKey(name: 'kitchen_status') final  String? kitchenStatus;
@override@JsonKey(name: 'cancel_reason') final  String? cancelReason;
 final  List<OrderItemModifier> _modifiers;
@override@JsonKey() List<OrderItemModifier> get modifiers {
  if (_modifiers is EqualUnmodifiableListView) return _modifiers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_modifiers);
}


/// Create a copy of OrderItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderItemCopyWith<_OrderItem> get copyWith => __$OrderItemCopyWithImpl<_OrderItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrderItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderItem&&(identical(other.id, id) || other.id == id)&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.price, price) || other.price == price)&&(identical(other.taxAmount, taxAmount) || other.taxAmount == taxAmount)&&(identical(other.discountAmount, discountAmount) || other.discountAmount == discountAmount)&&(identical(other.total, total) || other.total == total)&&(identical(other.status, status) || other.status == status)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.kitchenStatus, kitchenStatus) || other.kitchenStatus == kitchenStatus)&&(identical(other.cancelReason, cancelReason) || other.cancelReason == cancelReason)&&const DeepCollectionEquality().equals(other._modifiers, _modifiers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,orderId,productId,productName,quantity,price,taxAmount,discountAmount,total,status,notes,kitchenStatus,cancelReason,const DeepCollectionEquality().hash(_modifiers));

@override
String toString() {
  return 'OrderItem(id: $id, orderId: $orderId, productId: $productId, productName: $productName, quantity: $quantity, price: $price, taxAmount: $taxAmount, discountAmount: $discountAmount, total: $total, status: $status, notes: $notes, kitchenStatus: $kitchenStatus, cancelReason: $cancelReason, modifiers: $modifiers)';
}


}

/// @nodoc
abstract mixin class _$OrderItemCopyWith<$Res> implements $OrderItemCopyWith<$Res> {
  factory _$OrderItemCopyWith(_OrderItem value, $Res Function(_OrderItem) _then) = __$OrderItemCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(name: 'order_id') String orderId,@JsonKey(name: 'product_id') String productId,@JsonKey(name: 'product_name') String productName, int quantity, double price,@JsonKey(name: 'tax_amount') double taxAmount,@JsonKey(name: 'discount_amount') double discountAmount, double total, String status, String? notes,@JsonKey(name: 'kitchen_status') String? kitchenStatus,@JsonKey(name: 'cancel_reason') String? cancelReason, List<OrderItemModifier> modifiers
});




}
/// @nodoc
class __$OrderItemCopyWithImpl<$Res>
    implements _$OrderItemCopyWith<$Res> {
  __$OrderItemCopyWithImpl(this._self, this._then);

  final _OrderItem _self;
  final $Res Function(_OrderItem) _then;

/// Create a copy of OrderItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? orderId = null,Object? productId = null,Object? productName = null,Object? quantity = null,Object? price = null,Object? taxAmount = null,Object? discountAmount = null,Object? total = null,Object? status = null,Object? notes = freezed,Object? kitchenStatus = freezed,Object? cancelReason = freezed,Object? modifiers = null,}) {
  return _then(_OrderItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as String,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,productName: null == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,taxAmount: null == taxAmount ? _self.taxAmount : taxAmount // ignore: cast_nullable_to_non_nullable
as double,discountAmount: null == discountAmount ? _self.discountAmount : discountAmount // ignore: cast_nullable_to_non_nullable
as double,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as double,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,kitchenStatus: freezed == kitchenStatus ? _self.kitchenStatus : kitchenStatus // ignore: cast_nullable_to_non_nullable
as String?,cancelReason: freezed == cancelReason ? _self.cancelReason : cancelReason // ignore: cast_nullable_to_non_nullable
as String?,modifiers: null == modifiers ? _self._modifiers : modifiers // ignore: cast_nullable_to_non_nullable
as List<OrderItemModifier>,
  ));
}


}


/// @nodoc
mixin _$OrderItemModifier {

 String get id;@JsonKey(name: 'order_item_id') String get orderItemId; String get name; double get price;
/// Create a copy of OrderItemModifier
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderItemModifierCopyWith<OrderItemModifier> get copyWith => _$OrderItemModifierCopyWithImpl<OrderItemModifier>(this as OrderItemModifier, _$identity);

  /// Serializes this OrderItemModifier to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderItemModifier&&(identical(other.id, id) || other.id == id)&&(identical(other.orderItemId, orderItemId) || other.orderItemId == orderItemId)&&(identical(other.name, name) || other.name == name)&&(identical(other.price, price) || other.price == price));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,orderItemId,name,price);

@override
String toString() {
  return 'OrderItemModifier(id: $id, orderItemId: $orderItemId, name: $name, price: $price)';
}


}

/// @nodoc
abstract mixin class $OrderItemModifierCopyWith<$Res>  {
  factory $OrderItemModifierCopyWith(OrderItemModifier value, $Res Function(OrderItemModifier) _then) = _$OrderItemModifierCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(name: 'order_item_id') String orderItemId, String name, double price
});




}
/// @nodoc
class _$OrderItemModifierCopyWithImpl<$Res>
    implements $OrderItemModifierCopyWith<$Res> {
  _$OrderItemModifierCopyWithImpl(this._self, this._then);

  final OrderItemModifier _self;
  final $Res Function(OrderItemModifier) _then;

/// Create a copy of OrderItemModifier
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? orderItemId = null,Object? name = null,Object? price = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,orderItemId: null == orderItemId ? _self.orderItemId : orderItemId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [OrderItemModifier].
extension OrderItemModifierPatterns on OrderItemModifier {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderItemModifier value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderItemModifier() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderItemModifier value)  $default,){
final _that = this;
switch (_that) {
case _OrderItemModifier():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderItemModifier value)?  $default,){
final _that = this;
switch (_that) {
case _OrderItemModifier() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'order_item_id')  String orderItemId,  String name,  double price)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderItemModifier() when $default != null:
return $default(_that.id,_that.orderItemId,_that.name,_that.price);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'order_item_id')  String orderItemId,  String name,  double price)  $default,) {final _that = this;
switch (_that) {
case _OrderItemModifier():
return $default(_that.id,_that.orderItemId,_that.name,_that.price);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(name: 'order_item_id')  String orderItemId,  String name,  double price)?  $default,) {final _that = this;
switch (_that) {
case _OrderItemModifier() when $default != null:
return $default(_that.id,_that.orderItemId,_that.name,_that.price);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OrderItemModifier implements OrderItemModifier {
  const _OrderItemModifier({required this.id, @JsonKey(name: 'order_item_id') required this.orderItemId, required this.name, this.price = 0});
  factory _OrderItemModifier.fromJson(Map<String, dynamic> json) => _$OrderItemModifierFromJson(json);

@override final  String id;
@override@JsonKey(name: 'order_item_id') final  String orderItemId;
@override final  String name;
@override@JsonKey() final  double price;

/// Create a copy of OrderItemModifier
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderItemModifierCopyWith<_OrderItemModifier> get copyWith => __$OrderItemModifierCopyWithImpl<_OrderItemModifier>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrderItemModifierToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderItemModifier&&(identical(other.id, id) || other.id == id)&&(identical(other.orderItemId, orderItemId) || other.orderItemId == orderItemId)&&(identical(other.name, name) || other.name == name)&&(identical(other.price, price) || other.price == price));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,orderItemId,name,price);

@override
String toString() {
  return 'OrderItemModifier(id: $id, orderItemId: $orderItemId, name: $name, price: $price)';
}


}

/// @nodoc
abstract mixin class _$OrderItemModifierCopyWith<$Res> implements $OrderItemModifierCopyWith<$Res> {
  factory _$OrderItemModifierCopyWith(_OrderItemModifier value, $Res Function(_OrderItemModifier) _then) = __$OrderItemModifierCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(name: 'order_item_id') String orderItemId, String name, double price
});




}
/// @nodoc
class __$OrderItemModifierCopyWithImpl<$Res>
    implements _$OrderItemModifierCopyWith<$Res> {
  __$OrderItemModifierCopyWithImpl(this._self, this._then);

  final _OrderItemModifier _self;
  final $Res Function(_OrderItemModifier) _then;

/// Create a copy of OrderItemModifier
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? orderItemId = null,Object? name = null,Object? price = null,}) {
  return _then(_OrderItemModifier(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,orderItemId: null == orderItemId ? _self.orderItemId : orderItemId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}


/// @nodoc
mixin _$OrderCreate {

@JsonKey(name: 'store_id') String get storeId;@JsonKey(name: 'employee_id') String? get employeeId;@JsonKey(name: 'terminal_id') String? get terminalId;@JsonKey(name: 'table_number') int? get tableNumber;@JsonKey(name: 'shift_id') String? get shiftId;@JsonKey(name: 'order_type') String get orderType; String get channel;@JsonKey(name: 'discount_amount') double get discountAmount;@JsonKey(name: 'service_charge') double get serviceCharge; String? get notes; List<OrderItemCreate> get items;
/// Create a copy of OrderCreate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderCreateCopyWith<OrderCreate> get copyWith => _$OrderCreateCopyWithImpl<OrderCreate>(this as OrderCreate, _$identity);

  /// Serializes this OrderCreate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderCreate&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.employeeId, employeeId) || other.employeeId == employeeId)&&(identical(other.terminalId, terminalId) || other.terminalId == terminalId)&&(identical(other.tableNumber, tableNumber) || other.tableNumber == tableNumber)&&(identical(other.shiftId, shiftId) || other.shiftId == shiftId)&&(identical(other.orderType, orderType) || other.orderType == orderType)&&(identical(other.channel, channel) || other.channel == channel)&&(identical(other.discountAmount, discountAmount) || other.discountAmount == discountAmount)&&(identical(other.serviceCharge, serviceCharge) || other.serviceCharge == serviceCharge)&&(identical(other.notes, notes) || other.notes == notes)&&const DeepCollectionEquality().equals(other.items, items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,storeId,employeeId,terminalId,tableNumber,shiftId,orderType,channel,discountAmount,serviceCharge,notes,const DeepCollectionEquality().hash(items));

@override
String toString() {
  return 'OrderCreate(storeId: $storeId, employeeId: $employeeId, terminalId: $terminalId, tableNumber: $tableNumber, shiftId: $shiftId, orderType: $orderType, channel: $channel, discountAmount: $discountAmount, serviceCharge: $serviceCharge, notes: $notes, items: $items)';
}


}

/// @nodoc
abstract mixin class $OrderCreateCopyWith<$Res>  {
  factory $OrderCreateCopyWith(OrderCreate value, $Res Function(OrderCreate) _then) = _$OrderCreateCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'store_id') String storeId,@JsonKey(name: 'employee_id') String? employeeId,@JsonKey(name: 'terminal_id') String? terminalId,@JsonKey(name: 'table_number') int? tableNumber,@JsonKey(name: 'shift_id') String? shiftId,@JsonKey(name: 'order_type') String orderType, String channel,@JsonKey(name: 'discount_amount') double discountAmount,@JsonKey(name: 'service_charge') double serviceCharge, String? notes, List<OrderItemCreate> items
});




}
/// @nodoc
class _$OrderCreateCopyWithImpl<$Res>
    implements $OrderCreateCopyWith<$Res> {
  _$OrderCreateCopyWithImpl(this._self, this._then);

  final OrderCreate _self;
  final $Res Function(OrderCreate) _then;

/// Create a copy of OrderCreate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? storeId = null,Object? employeeId = freezed,Object? terminalId = freezed,Object? tableNumber = freezed,Object? shiftId = freezed,Object? orderType = null,Object? channel = null,Object? discountAmount = null,Object? serviceCharge = null,Object? notes = freezed,Object? items = null,}) {
  return _then(_self.copyWith(
storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,employeeId: freezed == employeeId ? _self.employeeId : employeeId // ignore: cast_nullable_to_non_nullable
as String?,terminalId: freezed == terminalId ? _self.terminalId : terminalId // ignore: cast_nullable_to_non_nullable
as String?,tableNumber: freezed == tableNumber ? _self.tableNumber : tableNumber // ignore: cast_nullable_to_non_nullable
as int?,shiftId: freezed == shiftId ? _self.shiftId : shiftId // ignore: cast_nullable_to_non_nullable
as String?,orderType: null == orderType ? _self.orderType : orderType // ignore: cast_nullable_to_non_nullable
as String,channel: null == channel ? _self.channel : channel // ignore: cast_nullable_to_non_nullable
as String,discountAmount: null == discountAmount ? _self.discountAmount : discountAmount // ignore: cast_nullable_to_non_nullable
as double,serviceCharge: null == serviceCharge ? _self.serviceCharge : serviceCharge // ignore: cast_nullable_to_non_nullable
as double,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<OrderItemCreate>,
  ));
}

}


/// Adds pattern-matching-related methods to [OrderCreate].
extension OrderCreatePatterns on OrderCreate {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderCreate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderCreate() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderCreate value)  $default,){
final _that = this;
switch (_that) {
case _OrderCreate():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderCreate value)?  $default,){
final _that = this;
switch (_that) {
case _OrderCreate() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'store_id')  String storeId, @JsonKey(name: 'employee_id')  String? employeeId, @JsonKey(name: 'terminal_id')  String? terminalId, @JsonKey(name: 'table_number')  int? tableNumber, @JsonKey(name: 'shift_id')  String? shiftId, @JsonKey(name: 'order_type')  String orderType,  String channel, @JsonKey(name: 'discount_amount')  double discountAmount, @JsonKey(name: 'service_charge')  double serviceCharge,  String? notes,  List<OrderItemCreate> items)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderCreate() when $default != null:
return $default(_that.storeId,_that.employeeId,_that.terminalId,_that.tableNumber,_that.shiftId,_that.orderType,_that.channel,_that.discountAmount,_that.serviceCharge,_that.notes,_that.items);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'store_id')  String storeId, @JsonKey(name: 'employee_id')  String? employeeId, @JsonKey(name: 'terminal_id')  String? terminalId, @JsonKey(name: 'table_number')  int? tableNumber, @JsonKey(name: 'shift_id')  String? shiftId, @JsonKey(name: 'order_type')  String orderType,  String channel, @JsonKey(name: 'discount_amount')  double discountAmount, @JsonKey(name: 'service_charge')  double serviceCharge,  String? notes,  List<OrderItemCreate> items)  $default,) {final _that = this;
switch (_that) {
case _OrderCreate():
return $default(_that.storeId,_that.employeeId,_that.terminalId,_that.tableNumber,_that.shiftId,_that.orderType,_that.channel,_that.discountAmount,_that.serviceCharge,_that.notes,_that.items);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'store_id')  String storeId, @JsonKey(name: 'employee_id')  String? employeeId, @JsonKey(name: 'terminal_id')  String? terminalId, @JsonKey(name: 'table_number')  int? tableNumber, @JsonKey(name: 'shift_id')  String? shiftId, @JsonKey(name: 'order_type')  String orderType,  String channel, @JsonKey(name: 'discount_amount')  double discountAmount, @JsonKey(name: 'service_charge')  double serviceCharge,  String? notes,  List<OrderItemCreate> items)?  $default,) {final _that = this;
switch (_that) {
case _OrderCreate() when $default != null:
return $default(_that.storeId,_that.employeeId,_that.terminalId,_that.tableNumber,_that.shiftId,_that.orderType,_that.channel,_that.discountAmount,_that.serviceCharge,_that.notes,_that.items);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OrderCreate implements OrderCreate {
  const _OrderCreate({@JsonKey(name: 'store_id') required this.storeId, @JsonKey(name: 'employee_id') this.employeeId, @JsonKey(name: 'terminal_id') this.terminalId, @JsonKey(name: 'table_number') this.tableNumber, @JsonKey(name: 'shift_id') this.shiftId, @JsonKey(name: 'order_type') this.orderType = 'dine_in', this.channel = 'pos', @JsonKey(name: 'discount_amount') this.discountAmount = 0, @JsonKey(name: 'service_charge') this.serviceCharge = 0, this.notes, required final  List<OrderItemCreate> items}): _items = items;
  factory _OrderCreate.fromJson(Map<String, dynamic> json) => _$OrderCreateFromJson(json);

@override@JsonKey(name: 'store_id') final  String storeId;
@override@JsonKey(name: 'employee_id') final  String? employeeId;
@override@JsonKey(name: 'terminal_id') final  String? terminalId;
@override@JsonKey(name: 'table_number') final  int? tableNumber;
@override@JsonKey(name: 'shift_id') final  String? shiftId;
@override@JsonKey(name: 'order_type') final  String orderType;
@override@JsonKey() final  String channel;
@override@JsonKey(name: 'discount_amount') final  double discountAmount;
@override@JsonKey(name: 'service_charge') final  double serviceCharge;
@override final  String? notes;
 final  List<OrderItemCreate> _items;
@override List<OrderItemCreate> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}


/// Create a copy of OrderCreate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderCreateCopyWith<_OrderCreate> get copyWith => __$OrderCreateCopyWithImpl<_OrderCreate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrderCreateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderCreate&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.employeeId, employeeId) || other.employeeId == employeeId)&&(identical(other.terminalId, terminalId) || other.terminalId == terminalId)&&(identical(other.tableNumber, tableNumber) || other.tableNumber == tableNumber)&&(identical(other.shiftId, shiftId) || other.shiftId == shiftId)&&(identical(other.orderType, orderType) || other.orderType == orderType)&&(identical(other.channel, channel) || other.channel == channel)&&(identical(other.discountAmount, discountAmount) || other.discountAmount == discountAmount)&&(identical(other.serviceCharge, serviceCharge) || other.serviceCharge == serviceCharge)&&(identical(other.notes, notes) || other.notes == notes)&&const DeepCollectionEquality().equals(other._items, _items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,storeId,employeeId,terminalId,tableNumber,shiftId,orderType,channel,discountAmount,serviceCharge,notes,const DeepCollectionEquality().hash(_items));

@override
String toString() {
  return 'OrderCreate(storeId: $storeId, employeeId: $employeeId, terminalId: $terminalId, tableNumber: $tableNumber, shiftId: $shiftId, orderType: $orderType, channel: $channel, discountAmount: $discountAmount, serviceCharge: $serviceCharge, notes: $notes, items: $items)';
}


}

/// @nodoc
abstract mixin class _$OrderCreateCopyWith<$Res> implements $OrderCreateCopyWith<$Res> {
  factory _$OrderCreateCopyWith(_OrderCreate value, $Res Function(_OrderCreate) _then) = __$OrderCreateCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'store_id') String storeId,@JsonKey(name: 'employee_id') String? employeeId,@JsonKey(name: 'terminal_id') String? terminalId,@JsonKey(name: 'table_number') int? tableNumber,@JsonKey(name: 'shift_id') String? shiftId,@JsonKey(name: 'order_type') String orderType, String channel,@JsonKey(name: 'discount_amount') double discountAmount,@JsonKey(name: 'service_charge') double serviceCharge, String? notes, List<OrderItemCreate> items
});




}
/// @nodoc
class __$OrderCreateCopyWithImpl<$Res>
    implements _$OrderCreateCopyWith<$Res> {
  __$OrderCreateCopyWithImpl(this._self, this._then);

  final _OrderCreate _self;
  final $Res Function(_OrderCreate) _then;

/// Create a copy of OrderCreate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? storeId = null,Object? employeeId = freezed,Object? terminalId = freezed,Object? tableNumber = freezed,Object? shiftId = freezed,Object? orderType = null,Object? channel = null,Object? discountAmount = null,Object? serviceCharge = null,Object? notes = freezed,Object? items = null,}) {
  return _then(_OrderCreate(
storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,employeeId: freezed == employeeId ? _self.employeeId : employeeId // ignore: cast_nullable_to_non_nullable
as String?,terminalId: freezed == terminalId ? _self.terminalId : terminalId // ignore: cast_nullable_to_non_nullable
as String?,tableNumber: freezed == tableNumber ? _self.tableNumber : tableNumber // ignore: cast_nullable_to_non_nullable
as int?,shiftId: freezed == shiftId ? _self.shiftId : shiftId // ignore: cast_nullable_to_non_nullable
as String?,orderType: null == orderType ? _self.orderType : orderType // ignore: cast_nullable_to_non_nullable
as String,channel: null == channel ? _self.channel : channel // ignore: cast_nullable_to_non_nullable
as String,discountAmount: null == discountAmount ? _self.discountAmount : discountAmount // ignore: cast_nullable_to_non_nullable
as double,serviceCharge: null == serviceCharge ? _self.serviceCharge : serviceCharge // ignore: cast_nullable_to_non_nullable
as double,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<OrderItemCreate>,
  ));
}


}


/// @nodoc
mixin _$OrderItemCreate {

@JsonKey(name: 'product_id') String get productId; int get quantity; double get price; String? get notes;
/// Create a copy of OrderItemCreate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderItemCreateCopyWith<OrderItemCreate> get copyWith => _$OrderItemCreateCopyWithImpl<OrderItemCreate>(this as OrderItemCreate, _$identity);

  /// Serializes this OrderItemCreate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderItemCreate&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.price, price) || other.price == price)&&(identical(other.notes, notes) || other.notes == notes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,productId,quantity,price,notes);

@override
String toString() {
  return 'OrderItemCreate(productId: $productId, quantity: $quantity, price: $price, notes: $notes)';
}


}

/// @nodoc
abstract mixin class $OrderItemCreateCopyWith<$Res>  {
  factory $OrderItemCreateCopyWith(OrderItemCreate value, $Res Function(OrderItemCreate) _then) = _$OrderItemCreateCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'product_id') String productId, int quantity, double price, String? notes
});




}
/// @nodoc
class _$OrderItemCreateCopyWithImpl<$Res>
    implements $OrderItemCreateCopyWith<$Res> {
  _$OrderItemCreateCopyWithImpl(this._self, this._then);

  final OrderItemCreate _self;
  final $Res Function(OrderItemCreate) _then;

/// Create a copy of OrderItemCreate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? productId = null,Object? quantity = null,Object? price = null,Object? notes = freezed,}) {
  return _then(_self.copyWith(
productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [OrderItemCreate].
extension OrderItemCreatePatterns on OrderItemCreate {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderItemCreate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderItemCreate() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderItemCreate value)  $default,){
final _that = this;
switch (_that) {
case _OrderItemCreate():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderItemCreate value)?  $default,){
final _that = this;
switch (_that) {
case _OrderItemCreate() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'product_id')  String productId,  int quantity,  double price,  String? notes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderItemCreate() when $default != null:
return $default(_that.productId,_that.quantity,_that.price,_that.notes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'product_id')  String productId,  int quantity,  double price,  String? notes)  $default,) {final _that = this;
switch (_that) {
case _OrderItemCreate():
return $default(_that.productId,_that.quantity,_that.price,_that.notes);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'product_id')  String productId,  int quantity,  double price,  String? notes)?  $default,) {final _that = this;
switch (_that) {
case _OrderItemCreate() when $default != null:
return $default(_that.productId,_that.quantity,_that.price,_that.notes);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OrderItemCreate implements OrderItemCreate {
  const _OrderItemCreate({@JsonKey(name: 'product_id') required this.productId, this.quantity = 1, required this.price, this.notes});
  factory _OrderItemCreate.fromJson(Map<String, dynamic> json) => _$OrderItemCreateFromJson(json);

@override@JsonKey(name: 'product_id') final  String productId;
@override@JsonKey() final  int quantity;
@override final  double price;
@override final  String? notes;

/// Create a copy of OrderItemCreate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderItemCreateCopyWith<_OrderItemCreate> get copyWith => __$OrderItemCreateCopyWithImpl<_OrderItemCreate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrderItemCreateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderItemCreate&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.price, price) || other.price == price)&&(identical(other.notes, notes) || other.notes == notes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,productId,quantity,price,notes);

@override
String toString() {
  return 'OrderItemCreate(productId: $productId, quantity: $quantity, price: $price, notes: $notes)';
}


}

/// @nodoc
abstract mixin class _$OrderItemCreateCopyWith<$Res> implements $OrderItemCreateCopyWith<$Res> {
  factory _$OrderItemCreateCopyWith(_OrderItemCreate value, $Res Function(_OrderItemCreate) _then) = __$OrderItemCreateCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'product_id') String productId, int quantity, double price, String? notes
});




}
/// @nodoc
class __$OrderItemCreateCopyWithImpl<$Res>
    implements _$OrderItemCreateCopyWith<$Res> {
  __$OrderItemCreateCopyWithImpl(this._self, this._then);

  final _OrderItemCreate _self;
  final $Res Function(_OrderItemCreate) _then;

/// Create a copy of OrderItemCreate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? productId = null,Object? quantity = null,Object? price = null,Object? notes = freezed,}) {
  return _then(_OrderItemCreate(
productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$PaymentCreate {

@JsonKey(name: 'order_id') String get orderId;@JsonKey(name: 'payment_method') String get paymentMethod; double get amount;@JsonKey(name: 'tip_amount') double get tipAmount; String? get reference;
/// Create a copy of PaymentCreate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentCreateCopyWith<PaymentCreate> get copyWith => _$PaymentCreateCopyWithImpl<PaymentCreate>(this as PaymentCreate, _$identity);

  /// Serializes this PaymentCreate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentCreate&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.tipAmount, tipAmount) || other.tipAmount == tipAmount)&&(identical(other.reference, reference) || other.reference == reference));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,orderId,paymentMethod,amount,tipAmount,reference);

@override
String toString() {
  return 'PaymentCreate(orderId: $orderId, paymentMethod: $paymentMethod, amount: $amount, tipAmount: $tipAmount, reference: $reference)';
}


}

/// @nodoc
abstract mixin class $PaymentCreateCopyWith<$Res>  {
  factory $PaymentCreateCopyWith(PaymentCreate value, $Res Function(PaymentCreate) _then) = _$PaymentCreateCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'order_id') String orderId,@JsonKey(name: 'payment_method') String paymentMethod, double amount,@JsonKey(name: 'tip_amount') double tipAmount, String? reference
});




}
/// @nodoc
class _$PaymentCreateCopyWithImpl<$Res>
    implements $PaymentCreateCopyWith<$Res> {
  _$PaymentCreateCopyWithImpl(this._self, this._then);

  final PaymentCreate _self;
  final $Res Function(PaymentCreate) _then;

/// Create a copy of PaymentCreate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? orderId = null,Object? paymentMethod = null,Object? amount = null,Object? tipAmount = null,Object? reference = freezed,}) {
  return _then(_self.copyWith(
orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as String,paymentMethod: null == paymentMethod ? _self.paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,tipAmount: null == tipAmount ? _self.tipAmount : tipAmount // ignore: cast_nullable_to_non_nullable
as double,reference: freezed == reference ? _self.reference : reference // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PaymentCreate].
extension PaymentCreatePatterns on PaymentCreate {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaymentCreate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentCreate() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaymentCreate value)  $default,){
final _that = this;
switch (_that) {
case _PaymentCreate():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaymentCreate value)?  $default,){
final _that = this;
switch (_that) {
case _PaymentCreate() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'order_id')  String orderId, @JsonKey(name: 'payment_method')  String paymentMethod,  double amount, @JsonKey(name: 'tip_amount')  double tipAmount,  String? reference)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentCreate() when $default != null:
return $default(_that.orderId,_that.paymentMethod,_that.amount,_that.tipAmount,_that.reference);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'order_id')  String orderId, @JsonKey(name: 'payment_method')  String paymentMethod,  double amount, @JsonKey(name: 'tip_amount')  double tipAmount,  String? reference)  $default,) {final _that = this;
switch (_that) {
case _PaymentCreate():
return $default(_that.orderId,_that.paymentMethod,_that.amount,_that.tipAmount,_that.reference);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'order_id')  String orderId, @JsonKey(name: 'payment_method')  String paymentMethod,  double amount, @JsonKey(name: 'tip_amount')  double tipAmount,  String? reference)?  $default,) {final _that = this;
switch (_that) {
case _PaymentCreate() when $default != null:
return $default(_that.orderId,_that.paymentMethod,_that.amount,_that.tipAmount,_that.reference);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaymentCreate implements PaymentCreate {
  const _PaymentCreate({@JsonKey(name: 'order_id') required this.orderId, @JsonKey(name: 'payment_method') required this.paymentMethod, required this.amount, @JsonKey(name: 'tip_amount') this.tipAmount = 0, this.reference});
  factory _PaymentCreate.fromJson(Map<String, dynamic> json) => _$PaymentCreateFromJson(json);

@override@JsonKey(name: 'order_id') final  String orderId;
@override@JsonKey(name: 'payment_method') final  String paymentMethod;
@override final  double amount;
@override@JsonKey(name: 'tip_amount') final  double tipAmount;
@override final  String? reference;

/// Create a copy of PaymentCreate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentCreateCopyWith<_PaymentCreate> get copyWith => __$PaymentCreateCopyWithImpl<_PaymentCreate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaymentCreateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentCreate&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.tipAmount, tipAmount) || other.tipAmount == tipAmount)&&(identical(other.reference, reference) || other.reference == reference));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,orderId,paymentMethod,amount,tipAmount,reference);

@override
String toString() {
  return 'PaymentCreate(orderId: $orderId, paymentMethod: $paymentMethod, amount: $amount, tipAmount: $tipAmount, reference: $reference)';
}


}

/// @nodoc
abstract mixin class _$PaymentCreateCopyWith<$Res> implements $PaymentCreateCopyWith<$Res> {
  factory _$PaymentCreateCopyWith(_PaymentCreate value, $Res Function(_PaymentCreate) _then) = __$PaymentCreateCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'order_id') String orderId,@JsonKey(name: 'payment_method') String paymentMethod, double amount,@JsonKey(name: 'tip_amount') double tipAmount, String? reference
});




}
/// @nodoc
class __$PaymentCreateCopyWithImpl<$Res>
    implements _$PaymentCreateCopyWith<$Res> {
  __$PaymentCreateCopyWithImpl(this._self, this._then);

  final _PaymentCreate _self;
  final $Res Function(_PaymentCreate) _then;

/// Create a copy of PaymentCreate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? orderId = null,Object? paymentMethod = null,Object? amount = null,Object? tipAmount = null,Object? reference = freezed,}) {
  return _then(_PaymentCreate(
orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as String,paymentMethod: null == paymentMethod ? _self.paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,tipAmount: null == tipAmount ? _self.tipAmount : tipAmount // ignore: cast_nullable_to_non_nullable
as double,reference: freezed == reference ? _self.reference : reference // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$RefundCreate {

@JsonKey(name: 'payment_id') String get paymentId; double get amount; String get reason;
/// Create a copy of RefundCreate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RefundCreateCopyWith<RefundCreate> get copyWith => _$RefundCreateCopyWithImpl<RefundCreate>(this as RefundCreate, _$identity);

  /// Serializes this RefundCreate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RefundCreate&&(identical(other.paymentId, paymentId) || other.paymentId == paymentId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.reason, reason) || other.reason == reason));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,paymentId,amount,reason);

@override
String toString() {
  return 'RefundCreate(paymentId: $paymentId, amount: $amount, reason: $reason)';
}


}

/// @nodoc
abstract mixin class $RefundCreateCopyWith<$Res>  {
  factory $RefundCreateCopyWith(RefundCreate value, $Res Function(RefundCreate) _then) = _$RefundCreateCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'payment_id') String paymentId, double amount, String reason
});




}
/// @nodoc
class _$RefundCreateCopyWithImpl<$Res>
    implements $RefundCreateCopyWith<$Res> {
  _$RefundCreateCopyWithImpl(this._self, this._then);

  final RefundCreate _self;
  final $Res Function(RefundCreate) _then;

/// Create a copy of RefundCreate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? paymentId = null,Object? amount = null,Object? reason = null,}) {
  return _then(_self.copyWith(
paymentId: null == paymentId ? _self.paymentId : paymentId // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [RefundCreate].
extension RefundCreatePatterns on RefundCreate {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RefundCreate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RefundCreate() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RefundCreate value)  $default,){
final _that = this;
switch (_that) {
case _RefundCreate():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RefundCreate value)?  $default,){
final _that = this;
switch (_that) {
case _RefundCreate() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'payment_id')  String paymentId,  double amount,  String reason)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RefundCreate() when $default != null:
return $default(_that.paymentId,_that.amount,_that.reason);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'payment_id')  String paymentId,  double amount,  String reason)  $default,) {final _that = this;
switch (_that) {
case _RefundCreate():
return $default(_that.paymentId,_that.amount,_that.reason);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'payment_id')  String paymentId,  double amount,  String reason)?  $default,) {final _that = this;
switch (_that) {
case _RefundCreate() when $default != null:
return $default(_that.paymentId,_that.amount,_that.reason);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RefundCreate implements RefundCreate {
  const _RefundCreate({@JsonKey(name: 'payment_id') required this.paymentId, required this.amount, required this.reason});
  factory _RefundCreate.fromJson(Map<String, dynamic> json) => _$RefundCreateFromJson(json);

@override@JsonKey(name: 'payment_id') final  String paymentId;
@override final  double amount;
@override final  String reason;

/// Create a copy of RefundCreate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RefundCreateCopyWith<_RefundCreate> get copyWith => __$RefundCreateCopyWithImpl<_RefundCreate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RefundCreateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RefundCreate&&(identical(other.paymentId, paymentId) || other.paymentId == paymentId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.reason, reason) || other.reason == reason));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,paymentId,amount,reason);

@override
String toString() {
  return 'RefundCreate(paymentId: $paymentId, amount: $amount, reason: $reason)';
}


}

/// @nodoc
abstract mixin class _$RefundCreateCopyWith<$Res> implements $RefundCreateCopyWith<$Res> {
  factory _$RefundCreateCopyWith(_RefundCreate value, $Res Function(_RefundCreate) _then) = __$RefundCreateCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'payment_id') String paymentId, double amount, String reason
});




}
/// @nodoc
class __$RefundCreateCopyWithImpl<$Res>
    implements _$RefundCreateCopyWith<$Res> {
  __$RefundCreateCopyWithImpl(this._self, this._then);

  final _RefundCreate _self;
  final $Res Function(_RefundCreate) _then;

/// Create a copy of RefundCreate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? paymentId = null,Object? amount = null,Object? reason = null,}) {
  return _then(_RefundCreate(
paymentId: null == paymentId ? _self.paymentId : paymentId // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$OrderStatusUpdate {

 String get status;
/// Create a copy of OrderStatusUpdate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderStatusUpdateCopyWith<OrderStatusUpdate> get copyWith => _$OrderStatusUpdateCopyWithImpl<OrderStatusUpdate>(this as OrderStatusUpdate, _$identity);

  /// Serializes this OrderStatusUpdate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderStatusUpdate&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status);

@override
String toString() {
  return 'OrderStatusUpdate(status: $status)';
}


}

/// @nodoc
abstract mixin class $OrderStatusUpdateCopyWith<$Res>  {
  factory $OrderStatusUpdateCopyWith(OrderStatusUpdate value, $Res Function(OrderStatusUpdate) _then) = _$OrderStatusUpdateCopyWithImpl;
@useResult
$Res call({
 String status
});




}
/// @nodoc
class _$OrderStatusUpdateCopyWithImpl<$Res>
    implements $OrderStatusUpdateCopyWith<$Res> {
  _$OrderStatusUpdateCopyWithImpl(this._self, this._then);

  final OrderStatusUpdate _self;
  final $Res Function(OrderStatusUpdate) _then;

/// Create a copy of OrderStatusUpdate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [OrderStatusUpdate].
extension OrderStatusUpdatePatterns on OrderStatusUpdate {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderStatusUpdate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderStatusUpdate() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderStatusUpdate value)  $default,){
final _that = this;
switch (_that) {
case _OrderStatusUpdate():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderStatusUpdate value)?  $default,){
final _that = this;
switch (_that) {
case _OrderStatusUpdate() when $default != null:
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
case _OrderStatusUpdate() when $default != null:
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
case _OrderStatusUpdate():
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
case _OrderStatusUpdate() when $default != null:
return $default(_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OrderStatusUpdate implements OrderStatusUpdate {
  const _OrderStatusUpdate({required this.status});
  factory _OrderStatusUpdate.fromJson(Map<String, dynamic> json) => _$OrderStatusUpdateFromJson(json);

@override final  String status;

/// Create a copy of OrderStatusUpdate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderStatusUpdateCopyWith<_OrderStatusUpdate> get copyWith => __$OrderStatusUpdateCopyWithImpl<_OrderStatusUpdate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrderStatusUpdateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderStatusUpdate&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status);

@override
String toString() {
  return 'OrderStatusUpdate(status: $status)';
}


}

/// @nodoc
abstract mixin class _$OrderStatusUpdateCopyWith<$Res> implements $OrderStatusUpdateCopyWith<$Res> {
  factory _$OrderStatusUpdateCopyWith(_OrderStatusUpdate value, $Res Function(_OrderStatusUpdate) _then) = __$OrderStatusUpdateCopyWithImpl;
@override @useResult
$Res call({
 String status
});




}
/// @nodoc
class __$OrderStatusUpdateCopyWithImpl<$Res>
    implements _$OrderStatusUpdateCopyWith<$Res> {
  __$OrderStatusUpdateCopyWithImpl(this._self, this._then);

  final _OrderStatusUpdate _self;
  final $Res Function(_OrderStatusUpdate) _then;

/// Create a copy of OrderStatusUpdate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,}) {
  return _then(_OrderStatusUpdate(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
