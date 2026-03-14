// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shift_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Shift {

 String get id;@JsonKey(name: 'store_id') String get storeId;@JsonKey(name: 'terminal_id') String? get terminalId;@JsonKey(name: 'employee_id') String get employeeId; String get status;@JsonKey(name: 'opening_cash') double get openingCash;@JsonKey(name: 'closing_cash') double? get closingCash;@JsonKey(name: 'expected_cash') double? get expectedCash;@JsonKey(name: 'cash_variance') double? get cashVariance;@JsonKey(name: 'total_sales') double get totalSales;@JsonKey(name: 'total_orders') int get totalOrders; String? get notes;@JsonKey(name: 'started_at') DateTime? get startedAt;@JsonKey(name: 'ended_at') DateTime? get endedAt;@JsonKey(name: 'payment_summaries') List<ShiftPaymentSummary> get paymentSummaries;
/// Create a copy of Shift
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ShiftCopyWith<Shift> get copyWith => _$ShiftCopyWithImpl<Shift>(this as Shift, _$identity);

  /// Serializes this Shift to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Shift&&(identical(other.id, id) || other.id == id)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.terminalId, terminalId) || other.terminalId == terminalId)&&(identical(other.employeeId, employeeId) || other.employeeId == employeeId)&&(identical(other.status, status) || other.status == status)&&(identical(other.openingCash, openingCash) || other.openingCash == openingCash)&&(identical(other.closingCash, closingCash) || other.closingCash == closingCash)&&(identical(other.expectedCash, expectedCash) || other.expectedCash == expectedCash)&&(identical(other.cashVariance, cashVariance) || other.cashVariance == cashVariance)&&(identical(other.totalSales, totalSales) || other.totalSales == totalSales)&&(identical(other.totalOrders, totalOrders) || other.totalOrders == totalOrders)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.startedAt, startedAt) || other.startedAt == startedAt)&&(identical(other.endedAt, endedAt) || other.endedAt == endedAt)&&const DeepCollectionEquality().equals(other.paymentSummaries, paymentSummaries));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,storeId,terminalId,employeeId,status,openingCash,closingCash,expectedCash,cashVariance,totalSales,totalOrders,notes,startedAt,endedAt,const DeepCollectionEquality().hash(paymentSummaries));

@override
String toString() {
  return 'Shift(id: $id, storeId: $storeId, terminalId: $terminalId, employeeId: $employeeId, status: $status, openingCash: $openingCash, closingCash: $closingCash, expectedCash: $expectedCash, cashVariance: $cashVariance, totalSales: $totalSales, totalOrders: $totalOrders, notes: $notes, startedAt: $startedAt, endedAt: $endedAt, paymentSummaries: $paymentSummaries)';
}


}

/// @nodoc
abstract mixin class $ShiftCopyWith<$Res>  {
  factory $ShiftCopyWith(Shift value, $Res Function(Shift) _then) = _$ShiftCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(name: 'store_id') String storeId,@JsonKey(name: 'terminal_id') String? terminalId,@JsonKey(name: 'employee_id') String employeeId, String status,@JsonKey(name: 'opening_cash') double openingCash,@JsonKey(name: 'closing_cash') double? closingCash,@JsonKey(name: 'expected_cash') double? expectedCash,@JsonKey(name: 'cash_variance') double? cashVariance,@JsonKey(name: 'total_sales') double totalSales,@JsonKey(name: 'total_orders') int totalOrders, String? notes,@JsonKey(name: 'started_at') DateTime? startedAt,@JsonKey(name: 'ended_at') DateTime? endedAt,@JsonKey(name: 'payment_summaries') List<ShiftPaymentSummary> paymentSummaries
});




}
/// @nodoc
class _$ShiftCopyWithImpl<$Res>
    implements $ShiftCopyWith<$Res> {
  _$ShiftCopyWithImpl(this._self, this._then);

  final Shift _self;
  final $Res Function(Shift) _then;

/// Create a copy of Shift
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? storeId = null,Object? terminalId = freezed,Object? employeeId = null,Object? status = null,Object? openingCash = null,Object? closingCash = freezed,Object? expectedCash = freezed,Object? cashVariance = freezed,Object? totalSales = null,Object? totalOrders = null,Object? notes = freezed,Object? startedAt = freezed,Object? endedAt = freezed,Object? paymentSummaries = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,terminalId: freezed == terminalId ? _self.terminalId : terminalId // ignore: cast_nullable_to_non_nullable
as String?,employeeId: null == employeeId ? _self.employeeId : employeeId // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,openingCash: null == openingCash ? _self.openingCash : openingCash // ignore: cast_nullable_to_non_nullable
as double,closingCash: freezed == closingCash ? _self.closingCash : closingCash // ignore: cast_nullable_to_non_nullable
as double?,expectedCash: freezed == expectedCash ? _self.expectedCash : expectedCash // ignore: cast_nullable_to_non_nullable
as double?,cashVariance: freezed == cashVariance ? _self.cashVariance : cashVariance // ignore: cast_nullable_to_non_nullable
as double?,totalSales: null == totalSales ? _self.totalSales : totalSales // ignore: cast_nullable_to_non_nullable
as double,totalOrders: null == totalOrders ? _self.totalOrders : totalOrders // ignore: cast_nullable_to_non_nullable
as int,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,startedAt: freezed == startedAt ? _self.startedAt : startedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,endedAt: freezed == endedAt ? _self.endedAt : endedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,paymentSummaries: null == paymentSummaries ? _self.paymentSummaries : paymentSummaries // ignore: cast_nullable_to_non_nullable
as List<ShiftPaymentSummary>,
  ));
}

}


/// Adds pattern-matching-related methods to [Shift].
extension ShiftPatterns on Shift {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Shift value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Shift() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Shift value)  $default,){
final _that = this;
switch (_that) {
case _Shift():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Shift value)?  $default,){
final _that = this;
switch (_that) {
case _Shift() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'store_id')  String storeId, @JsonKey(name: 'terminal_id')  String? terminalId, @JsonKey(name: 'employee_id')  String employeeId,  String status, @JsonKey(name: 'opening_cash')  double openingCash, @JsonKey(name: 'closing_cash')  double? closingCash, @JsonKey(name: 'expected_cash')  double? expectedCash, @JsonKey(name: 'cash_variance')  double? cashVariance, @JsonKey(name: 'total_sales')  double totalSales, @JsonKey(name: 'total_orders')  int totalOrders,  String? notes, @JsonKey(name: 'started_at')  DateTime? startedAt, @JsonKey(name: 'ended_at')  DateTime? endedAt, @JsonKey(name: 'payment_summaries')  List<ShiftPaymentSummary> paymentSummaries)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Shift() when $default != null:
return $default(_that.id,_that.storeId,_that.terminalId,_that.employeeId,_that.status,_that.openingCash,_that.closingCash,_that.expectedCash,_that.cashVariance,_that.totalSales,_that.totalOrders,_that.notes,_that.startedAt,_that.endedAt,_that.paymentSummaries);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'store_id')  String storeId, @JsonKey(name: 'terminal_id')  String? terminalId, @JsonKey(name: 'employee_id')  String employeeId,  String status, @JsonKey(name: 'opening_cash')  double openingCash, @JsonKey(name: 'closing_cash')  double? closingCash, @JsonKey(name: 'expected_cash')  double? expectedCash, @JsonKey(name: 'cash_variance')  double? cashVariance, @JsonKey(name: 'total_sales')  double totalSales, @JsonKey(name: 'total_orders')  int totalOrders,  String? notes, @JsonKey(name: 'started_at')  DateTime? startedAt, @JsonKey(name: 'ended_at')  DateTime? endedAt, @JsonKey(name: 'payment_summaries')  List<ShiftPaymentSummary> paymentSummaries)  $default,) {final _that = this;
switch (_that) {
case _Shift():
return $default(_that.id,_that.storeId,_that.terminalId,_that.employeeId,_that.status,_that.openingCash,_that.closingCash,_that.expectedCash,_that.cashVariance,_that.totalSales,_that.totalOrders,_that.notes,_that.startedAt,_that.endedAt,_that.paymentSummaries);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(name: 'store_id')  String storeId, @JsonKey(name: 'terminal_id')  String? terminalId, @JsonKey(name: 'employee_id')  String employeeId,  String status, @JsonKey(name: 'opening_cash')  double openingCash, @JsonKey(name: 'closing_cash')  double? closingCash, @JsonKey(name: 'expected_cash')  double? expectedCash, @JsonKey(name: 'cash_variance')  double? cashVariance, @JsonKey(name: 'total_sales')  double totalSales, @JsonKey(name: 'total_orders')  int totalOrders,  String? notes, @JsonKey(name: 'started_at')  DateTime? startedAt, @JsonKey(name: 'ended_at')  DateTime? endedAt, @JsonKey(name: 'payment_summaries')  List<ShiftPaymentSummary> paymentSummaries)?  $default,) {final _that = this;
switch (_that) {
case _Shift() when $default != null:
return $default(_that.id,_that.storeId,_that.terminalId,_that.employeeId,_that.status,_that.openingCash,_that.closingCash,_that.expectedCash,_that.cashVariance,_that.totalSales,_that.totalOrders,_that.notes,_that.startedAt,_that.endedAt,_that.paymentSummaries);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Shift implements Shift {
  const _Shift({required this.id, @JsonKey(name: 'store_id') required this.storeId, @JsonKey(name: 'terminal_id') this.terminalId, @JsonKey(name: 'employee_id') required this.employeeId, required this.status, @JsonKey(name: 'opening_cash') this.openingCash = 0, @JsonKey(name: 'closing_cash') this.closingCash, @JsonKey(name: 'expected_cash') this.expectedCash, @JsonKey(name: 'cash_variance') this.cashVariance, @JsonKey(name: 'total_sales') this.totalSales = 0, @JsonKey(name: 'total_orders') this.totalOrders = 0, this.notes, @JsonKey(name: 'started_at') this.startedAt, @JsonKey(name: 'ended_at') this.endedAt, @JsonKey(name: 'payment_summaries') final  List<ShiftPaymentSummary> paymentSummaries = const []}): _paymentSummaries = paymentSummaries;
  factory _Shift.fromJson(Map<String, dynamic> json) => _$ShiftFromJson(json);

@override final  String id;
@override@JsonKey(name: 'store_id') final  String storeId;
@override@JsonKey(name: 'terminal_id') final  String? terminalId;
@override@JsonKey(name: 'employee_id') final  String employeeId;
@override final  String status;
@override@JsonKey(name: 'opening_cash') final  double openingCash;
@override@JsonKey(name: 'closing_cash') final  double? closingCash;
@override@JsonKey(name: 'expected_cash') final  double? expectedCash;
@override@JsonKey(name: 'cash_variance') final  double? cashVariance;
@override@JsonKey(name: 'total_sales') final  double totalSales;
@override@JsonKey(name: 'total_orders') final  int totalOrders;
@override final  String? notes;
@override@JsonKey(name: 'started_at') final  DateTime? startedAt;
@override@JsonKey(name: 'ended_at') final  DateTime? endedAt;
 final  List<ShiftPaymentSummary> _paymentSummaries;
@override@JsonKey(name: 'payment_summaries') List<ShiftPaymentSummary> get paymentSummaries {
  if (_paymentSummaries is EqualUnmodifiableListView) return _paymentSummaries;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_paymentSummaries);
}


/// Create a copy of Shift
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ShiftCopyWith<_Shift> get copyWith => __$ShiftCopyWithImpl<_Shift>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ShiftToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Shift&&(identical(other.id, id) || other.id == id)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.terminalId, terminalId) || other.terminalId == terminalId)&&(identical(other.employeeId, employeeId) || other.employeeId == employeeId)&&(identical(other.status, status) || other.status == status)&&(identical(other.openingCash, openingCash) || other.openingCash == openingCash)&&(identical(other.closingCash, closingCash) || other.closingCash == closingCash)&&(identical(other.expectedCash, expectedCash) || other.expectedCash == expectedCash)&&(identical(other.cashVariance, cashVariance) || other.cashVariance == cashVariance)&&(identical(other.totalSales, totalSales) || other.totalSales == totalSales)&&(identical(other.totalOrders, totalOrders) || other.totalOrders == totalOrders)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.startedAt, startedAt) || other.startedAt == startedAt)&&(identical(other.endedAt, endedAt) || other.endedAt == endedAt)&&const DeepCollectionEquality().equals(other._paymentSummaries, _paymentSummaries));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,storeId,terminalId,employeeId,status,openingCash,closingCash,expectedCash,cashVariance,totalSales,totalOrders,notes,startedAt,endedAt,const DeepCollectionEquality().hash(_paymentSummaries));

@override
String toString() {
  return 'Shift(id: $id, storeId: $storeId, terminalId: $terminalId, employeeId: $employeeId, status: $status, openingCash: $openingCash, closingCash: $closingCash, expectedCash: $expectedCash, cashVariance: $cashVariance, totalSales: $totalSales, totalOrders: $totalOrders, notes: $notes, startedAt: $startedAt, endedAt: $endedAt, paymentSummaries: $paymentSummaries)';
}


}

/// @nodoc
abstract mixin class _$ShiftCopyWith<$Res> implements $ShiftCopyWith<$Res> {
  factory _$ShiftCopyWith(_Shift value, $Res Function(_Shift) _then) = __$ShiftCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(name: 'store_id') String storeId,@JsonKey(name: 'terminal_id') String? terminalId,@JsonKey(name: 'employee_id') String employeeId, String status,@JsonKey(name: 'opening_cash') double openingCash,@JsonKey(name: 'closing_cash') double? closingCash,@JsonKey(name: 'expected_cash') double? expectedCash,@JsonKey(name: 'cash_variance') double? cashVariance,@JsonKey(name: 'total_sales') double totalSales,@JsonKey(name: 'total_orders') int totalOrders, String? notes,@JsonKey(name: 'started_at') DateTime? startedAt,@JsonKey(name: 'ended_at') DateTime? endedAt,@JsonKey(name: 'payment_summaries') List<ShiftPaymentSummary> paymentSummaries
});




}
/// @nodoc
class __$ShiftCopyWithImpl<$Res>
    implements _$ShiftCopyWith<$Res> {
  __$ShiftCopyWithImpl(this._self, this._then);

  final _Shift _self;
  final $Res Function(_Shift) _then;

/// Create a copy of Shift
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? storeId = null,Object? terminalId = freezed,Object? employeeId = null,Object? status = null,Object? openingCash = null,Object? closingCash = freezed,Object? expectedCash = freezed,Object? cashVariance = freezed,Object? totalSales = null,Object? totalOrders = null,Object? notes = freezed,Object? startedAt = freezed,Object? endedAt = freezed,Object? paymentSummaries = null,}) {
  return _then(_Shift(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,terminalId: freezed == terminalId ? _self.terminalId : terminalId // ignore: cast_nullable_to_non_nullable
as String?,employeeId: null == employeeId ? _self.employeeId : employeeId // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,openingCash: null == openingCash ? _self.openingCash : openingCash // ignore: cast_nullable_to_non_nullable
as double,closingCash: freezed == closingCash ? _self.closingCash : closingCash // ignore: cast_nullable_to_non_nullable
as double?,expectedCash: freezed == expectedCash ? _self.expectedCash : expectedCash // ignore: cast_nullable_to_non_nullable
as double?,cashVariance: freezed == cashVariance ? _self.cashVariance : cashVariance // ignore: cast_nullable_to_non_nullable
as double?,totalSales: null == totalSales ? _self.totalSales : totalSales // ignore: cast_nullable_to_non_nullable
as double,totalOrders: null == totalOrders ? _self.totalOrders : totalOrders // ignore: cast_nullable_to_non_nullable
as int,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,startedAt: freezed == startedAt ? _self.startedAt : startedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,endedAt: freezed == endedAt ? _self.endedAt : endedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,paymentSummaries: null == paymentSummaries ? _self._paymentSummaries : paymentSummaries // ignore: cast_nullable_to_non_nullable
as List<ShiftPaymentSummary>,
  ));
}


}


/// @nodoc
mixin _$ShiftPaymentSummary {

 String get id;@JsonKey(name: 'shift_id') String get shiftId;@JsonKey(name: 'payment_method') String get paymentMethod;@JsonKey(name: 'expected_amount') double get expectedAmount;@JsonKey(name: 'actual_amount') double get actualAmount; double get variance;
/// Create a copy of ShiftPaymentSummary
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ShiftPaymentSummaryCopyWith<ShiftPaymentSummary> get copyWith => _$ShiftPaymentSummaryCopyWithImpl<ShiftPaymentSummary>(this as ShiftPaymentSummary, _$identity);

  /// Serializes this ShiftPaymentSummary to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShiftPaymentSummary&&(identical(other.id, id) || other.id == id)&&(identical(other.shiftId, shiftId) || other.shiftId == shiftId)&&(identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod)&&(identical(other.expectedAmount, expectedAmount) || other.expectedAmount == expectedAmount)&&(identical(other.actualAmount, actualAmount) || other.actualAmount == actualAmount)&&(identical(other.variance, variance) || other.variance == variance));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,shiftId,paymentMethod,expectedAmount,actualAmount,variance);

@override
String toString() {
  return 'ShiftPaymentSummary(id: $id, shiftId: $shiftId, paymentMethod: $paymentMethod, expectedAmount: $expectedAmount, actualAmount: $actualAmount, variance: $variance)';
}


}

/// @nodoc
abstract mixin class $ShiftPaymentSummaryCopyWith<$Res>  {
  factory $ShiftPaymentSummaryCopyWith(ShiftPaymentSummary value, $Res Function(ShiftPaymentSummary) _then) = _$ShiftPaymentSummaryCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(name: 'shift_id') String shiftId,@JsonKey(name: 'payment_method') String paymentMethod,@JsonKey(name: 'expected_amount') double expectedAmount,@JsonKey(name: 'actual_amount') double actualAmount, double variance
});




}
/// @nodoc
class _$ShiftPaymentSummaryCopyWithImpl<$Res>
    implements $ShiftPaymentSummaryCopyWith<$Res> {
  _$ShiftPaymentSummaryCopyWithImpl(this._self, this._then);

  final ShiftPaymentSummary _self;
  final $Res Function(ShiftPaymentSummary) _then;

/// Create a copy of ShiftPaymentSummary
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? shiftId = null,Object? paymentMethod = null,Object? expectedAmount = null,Object? actualAmount = null,Object? variance = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,shiftId: null == shiftId ? _self.shiftId : shiftId // ignore: cast_nullable_to_non_nullable
as String,paymentMethod: null == paymentMethod ? _self.paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as String,expectedAmount: null == expectedAmount ? _self.expectedAmount : expectedAmount // ignore: cast_nullable_to_non_nullable
as double,actualAmount: null == actualAmount ? _self.actualAmount : actualAmount // ignore: cast_nullable_to_non_nullable
as double,variance: null == variance ? _self.variance : variance // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [ShiftPaymentSummary].
extension ShiftPaymentSummaryPatterns on ShiftPaymentSummary {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ShiftPaymentSummary value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ShiftPaymentSummary() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ShiftPaymentSummary value)  $default,){
final _that = this;
switch (_that) {
case _ShiftPaymentSummary():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ShiftPaymentSummary value)?  $default,){
final _that = this;
switch (_that) {
case _ShiftPaymentSummary() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'shift_id')  String shiftId, @JsonKey(name: 'payment_method')  String paymentMethod, @JsonKey(name: 'expected_amount')  double expectedAmount, @JsonKey(name: 'actual_amount')  double actualAmount,  double variance)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ShiftPaymentSummary() when $default != null:
return $default(_that.id,_that.shiftId,_that.paymentMethod,_that.expectedAmount,_that.actualAmount,_that.variance);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'shift_id')  String shiftId, @JsonKey(name: 'payment_method')  String paymentMethod, @JsonKey(name: 'expected_amount')  double expectedAmount, @JsonKey(name: 'actual_amount')  double actualAmount,  double variance)  $default,) {final _that = this;
switch (_that) {
case _ShiftPaymentSummary():
return $default(_that.id,_that.shiftId,_that.paymentMethod,_that.expectedAmount,_that.actualAmount,_that.variance);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(name: 'shift_id')  String shiftId, @JsonKey(name: 'payment_method')  String paymentMethod, @JsonKey(name: 'expected_amount')  double expectedAmount, @JsonKey(name: 'actual_amount')  double actualAmount,  double variance)?  $default,) {final _that = this;
switch (_that) {
case _ShiftPaymentSummary() when $default != null:
return $default(_that.id,_that.shiftId,_that.paymentMethod,_that.expectedAmount,_that.actualAmount,_that.variance);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ShiftPaymentSummary implements ShiftPaymentSummary {
  const _ShiftPaymentSummary({required this.id, @JsonKey(name: 'shift_id') required this.shiftId, @JsonKey(name: 'payment_method') required this.paymentMethod, @JsonKey(name: 'expected_amount') this.expectedAmount = 0, @JsonKey(name: 'actual_amount') this.actualAmount = 0, this.variance = 0});
  factory _ShiftPaymentSummary.fromJson(Map<String, dynamic> json) => _$ShiftPaymentSummaryFromJson(json);

@override final  String id;
@override@JsonKey(name: 'shift_id') final  String shiftId;
@override@JsonKey(name: 'payment_method') final  String paymentMethod;
@override@JsonKey(name: 'expected_amount') final  double expectedAmount;
@override@JsonKey(name: 'actual_amount') final  double actualAmount;
@override@JsonKey() final  double variance;

/// Create a copy of ShiftPaymentSummary
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ShiftPaymentSummaryCopyWith<_ShiftPaymentSummary> get copyWith => __$ShiftPaymentSummaryCopyWithImpl<_ShiftPaymentSummary>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ShiftPaymentSummaryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ShiftPaymentSummary&&(identical(other.id, id) || other.id == id)&&(identical(other.shiftId, shiftId) || other.shiftId == shiftId)&&(identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod)&&(identical(other.expectedAmount, expectedAmount) || other.expectedAmount == expectedAmount)&&(identical(other.actualAmount, actualAmount) || other.actualAmount == actualAmount)&&(identical(other.variance, variance) || other.variance == variance));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,shiftId,paymentMethod,expectedAmount,actualAmount,variance);

@override
String toString() {
  return 'ShiftPaymentSummary(id: $id, shiftId: $shiftId, paymentMethod: $paymentMethod, expectedAmount: $expectedAmount, actualAmount: $actualAmount, variance: $variance)';
}


}

/// @nodoc
abstract mixin class _$ShiftPaymentSummaryCopyWith<$Res> implements $ShiftPaymentSummaryCopyWith<$Res> {
  factory _$ShiftPaymentSummaryCopyWith(_ShiftPaymentSummary value, $Res Function(_ShiftPaymentSummary) _then) = __$ShiftPaymentSummaryCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(name: 'shift_id') String shiftId,@JsonKey(name: 'payment_method') String paymentMethod,@JsonKey(name: 'expected_amount') double expectedAmount,@JsonKey(name: 'actual_amount') double actualAmount, double variance
});




}
/// @nodoc
class __$ShiftPaymentSummaryCopyWithImpl<$Res>
    implements _$ShiftPaymentSummaryCopyWith<$Res> {
  __$ShiftPaymentSummaryCopyWithImpl(this._self, this._then);

  final _ShiftPaymentSummary _self;
  final $Res Function(_ShiftPaymentSummary) _then;

/// Create a copy of ShiftPaymentSummary
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? shiftId = null,Object? paymentMethod = null,Object? expectedAmount = null,Object? actualAmount = null,Object? variance = null,}) {
  return _then(_ShiftPaymentSummary(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,shiftId: null == shiftId ? _self.shiftId : shiftId // ignore: cast_nullable_to_non_nullable
as String,paymentMethod: null == paymentMethod ? _self.paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as String,expectedAmount: null == expectedAmount ? _self.expectedAmount : expectedAmount // ignore: cast_nullable_to_non_nullable
as double,actualAmount: null == actualAmount ? _self.actualAmount : actualAmount // ignore: cast_nullable_to_non_nullable
as double,variance: null == variance ? _self.variance : variance // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}


/// @nodoc
mixin _$ShiftOpen {

@JsonKey(name: 'store_id') String get storeId;@JsonKey(name: 'terminal_id') String? get terminalId;@JsonKey(name: 'employee_id') String get employeeId;@JsonKey(name: 'opening_cash') double get openingCash; String? get notes;
/// Create a copy of ShiftOpen
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ShiftOpenCopyWith<ShiftOpen> get copyWith => _$ShiftOpenCopyWithImpl<ShiftOpen>(this as ShiftOpen, _$identity);

  /// Serializes this ShiftOpen to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShiftOpen&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.terminalId, terminalId) || other.terminalId == terminalId)&&(identical(other.employeeId, employeeId) || other.employeeId == employeeId)&&(identical(other.openingCash, openingCash) || other.openingCash == openingCash)&&(identical(other.notes, notes) || other.notes == notes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,storeId,terminalId,employeeId,openingCash,notes);

@override
String toString() {
  return 'ShiftOpen(storeId: $storeId, terminalId: $terminalId, employeeId: $employeeId, openingCash: $openingCash, notes: $notes)';
}


}

/// @nodoc
abstract mixin class $ShiftOpenCopyWith<$Res>  {
  factory $ShiftOpenCopyWith(ShiftOpen value, $Res Function(ShiftOpen) _then) = _$ShiftOpenCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'store_id') String storeId,@JsonKey(name: 'terminal_id') String? terminalId,@JsonKey(name: 'employee_id') String employeeId,@JsonKey(name: 'opening_cash') double openingCash, String? notes
});




}
/// @nodoc
class _$ShiftOpenCopyWithImpl<$Res>
    implements $ShiftOpenCopyWith<$Res> {
  _$ShiftOpenCopyWithImpl(this._self, this._then);

  final ShiftOpen _self;
  final $Res Function(ShiftOpen) _then;

/// Create a copy of ShiftOpen
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? storeId = null,Object? terminalId = freezed,Object? employeeId = null,Object? openingCash = null,Object? notes = freezed,}) {
  return _then(_self.copyWith(
storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,terminalId: freezed == terminalId ? _self.terminalId : terminalId // ignore: cast_nullable_to_non_nullable
as String?,employeeId: null == employeeId ? _self.employeeId : employeeId // ignore: cast_nullable_to_non_nullable
as String,openingCash: null == openingCash ? _self.openingCash : openingCash // ignore: cast_nullable_to_non_nullable
as double,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ShiftOpen].
extension ShiftOpenPatterns on ShiftOpen {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ShiftOpen value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ShiftOpen() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ShiftOpen value)  $default,){
final _that = this;
switch (_that) {
case _ShiftOpen():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ShiftOpen value)?  $default,){
final _that = this;
switch (_that) {
case _ShiftOpen() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'store_id')  String storeId, @JsonKey(name: 'terminal_id')  String? terminalId, @JsonKey(name: 'employee_id')  String employeeId, @JsonKey(name: 'opening_cash')  double openingCash,  String? notes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ShiftOpen() when $default != null:
return $default(_that.storeId,_that.terminalId,_that.employeeId,_that.openingCash,_that.notes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'store_id')  String storeId, @JsonKey(name: 'terminal_id')  String? terminalId, @JsonKey(name: 'employee_id')  String employeeId, @JsonKey(name: 'opening_cash')  double openingCash,  String? notes)  $default,) {final _that = this;
switch (_that) {
case _ShiftOpen():
return $default(_that.storeId,_that.terminalId,_that.employeeId,_that.openingCash,_that.notes);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'store_id')  String storeId, @JsonKey(name: 'terminal_id')  String? terminalId, @JsonKey(name: 'employee_id')  String employeeId, @JsonKey(name: 'opening_cash')  double openingCash,  String? notes)?  $default,) {final _that = this;
switch (_that) {
case _ShiftOpen() when $default != null:
return $default(_that.storeId,_that.terminalId,_that.employeeId,_that.openingCash,_that.notes);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ShiftOpen implements ShiftOpen {
  const _ShiftOpen({@JsonKey(name: 'store_id') required this.storeId, @JsonKey(name: 'terminal_id') this.terminalId, @JsonKey(name: 'employee_id') required this.employeeId, @JsonKey(name: 'opening_cash') this.openingCash = 0, this.notes});
  factory _ShiftOpen.fromJson(Map<String, dynamic> json) => _$ShiftOpenFromJson(json);

@override@JsonKey(name: 'store_id') final  String storeId;
@override@JsonKey(name: 'terminal_id') final  String? terminalId;
@override@JsonKey(name: 'employee_id') final  String employeeId;
@override@JsonKey(name: 'opening_cash') final  double openingCash;
@override final  String? notes;

/// Create a copy of ShiftOpen
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ShiftOpenCopyWith<_ShiftOpen> get copyWith => __$ShiftOpenCopyWithImpl<_ShiftOpen>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ShiftOpenToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ShiftOpen&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.terminalId, terminalId) || other.terminalId == terminalId)&&(identical(other.employeeId, employeeId) || other.employeeId == employeeId)&&(identical(other.openingCash, openingCash) || other.openingCash == openingCash)&&(identical(other.notes, notes) || other.notes == notes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,storeId,terminalId,employeeId,openingCash,notes);

@override
String toString() {
  return 'ShiftOpen(storeId: $storeId, terminalId: $terminalId, employeeId: $employeeId, openingCash: $openingCash, notes: $notes)';
}


}

/// @nodoc
abstract mixin class _$ShiftOpenCopyWith<$Res> implements $ShiftOpenCopyWith<$Res> {
  factory _$ShiftOpenCopyWith(_ShiftOpen value, $Res Function(_ShiftOpen) _then) = __$ShiftOpenCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'store_id') String storeId,@JsonKey(name: 'terminal_id') String? terminalId,@JsonKey(name: 'employee_id') String employeeId,@JsonKey(name: 'opening_cash') double openingCash, String? notes
});




}
/// @nodoc
class __$ShiftOpenCopyWithImpl<$Res>
    implements _$ShiftOpenCopyWith<$Res> {
  __$ShiftOpenCopyWithImpl(this._self, this._then);

  final _ShiftOpen _self;
  final $Res Function(_ShiftOpen) _then;

/// Create a copy of ShiftOpen
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? storeId = null,Object? terminalId = freezed,Object? employeeId = null,Object? openingCash = null,Object? notes = freezed,}) {
  return _then(_ShiftOpen(
storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,terminalId: freezed == terminalId ? _self.terminalId : terminalId // ignore: cast_nullable_to_non_nullable
as String?,employeeId: null == employeeId ? _self.employeeId : employeeId // ignore: cast_nullable_to_non_nullable
as String,openingCash: null == openingCash ? _self.openingCash : openingCash // ignore: cast_nullable_to_non_nullable
as double,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ShiftClose {

@JsonKey(name: 'closing_cash') double get closingCash; String? get notes;@JsonKey(name: 'payment_summaries') List<ShiftPaymentSummaryCreate>? get paymentSummaries;
/// Create a copy of ShiftClose
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ShiftCloseCopyWith<ShiftClose> get copyWith => _$ShiftCloseCopyWithImpl<ShiftClose>(this as ShiftClose, _$identity);

  /// Serializes this ShiftClose to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShiftClose&&(identical(other.closingCash, closingCash) || other.closingCash == closingCash)&&(identical(other.notes, notes) || other.notes == notes)&&const DeepCollectionEquality().equals(other.paymentSummaries, paymentSummaries));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,closingCash,notes,const DeepCollectionEquality().hash(paymentSummaries));

@override
String toString() {
  return 'ShiftClose(closingCash: $closingCash, notes: $notes, paymentSummaries: $paymentSummaries)';
}


}

/// @nodoc
abstract mixin class $ShiftCloseCopyWith<$Res>  {
  factory $ShiftCloseCopyWith(ShiftClose value, $Res Function(ShiftClose) _then) = _$ShiftCloseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'closing_cash') double closingCash, String? notes,@JsonKey(name: 'payment_summaries') List<ShiftPaymentSummaryCreate>? paymentSummaries
});




}
/// @nodoc
class _$ShiftCloseCopyWithImpl<$Res>
    implements $ShiftCloseCopyWith<$Res> {
  _$ShiftCloseCopyWithImpl(this._self, this._then);

  final ShiftClose _self;
  final $Res Function(ShiftClose) _then;

/// Create a copy of ShiftClose
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? closingCash = null,Object? notes = freezed,Object? paymentSummaries = freezed,}) {
  return _then(_self.copyWith(
closingCash: null == closingCash ? _self.closingCash : closingCash // ignore: cast_nullable_to_non_nullable
as double,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,paymentSummaries: freezed == paymentSummaries ? _self.paymentSummaries : paymentSummaries // ignore: cast_nullable_to_non_nullable
as List<ShiftPaymentSummaryCreate>?,
  ));
}

}


/// Adds pattern-matching-related methods to [ShiftClose].
extension ShiftClosePatterns on ShiftClose {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ShiftClose value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ShiftClose() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ShiftClose value)  $default,){
final _that = this;
switch (_that) {
case _ShiftClose():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ShiftClose value)?  $default,){
final _that = this;
switch (_that) {
case _ShiftClose() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'closing_cash')  double closingCash,  String? notes, @JsonKey(name: 'payment_summaries')  List<ShiftPaymentSummaryCreate>? paymentSummaries)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ShiftClose() when $default != null:
return $default(_that.closingCash,_that.notes,_that.paymentSummaries);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'closing_cash')  double closingCash,  String? notes, @JsonKey(name: 'payment_summaries')  List<ShiftPaymentSummaryCreate>? paymentSummaries)  $default,) {final _that = this;
switch (_that) {
case _ShiftClose():
return $default(_that.closingCash,_that.notes,_that.paymentSummaries);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'closing_cash')  double closingCash,  String? notes, @JsonKey(name: 'payment_summaries')  List<ShiftPaymentSummaryCreate>? paymentSummaries)?  $default,) {final _that = this;
switch (_that) {
case _ShiftClose() when $default != null:
return $default(_that.closingCash,_that.notes,_that.paymentSummaries);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ShiftClose implements ShiftClose {
  const _ShiftClose({@JsonKey(name: 'closing_cash') required this.closingCash, this.notes, @JsonKey(name: 'payment_summaries') final  List<ShiftPaymentSummaryCreate>? paymentSummaries}): _paymentSummaries = paymentSummaries;
  factory _ShiftClose.fromJson(Map<String, dynamic> json) => _$ShiftCloseFromJson(json);

@override@JsonKey(name: 'closing_cash') final  double closingCash;
@override final  String? notes;
 final  List<ShiftPaymentSummaryCreate>? _paymentSummaries;
@override@JsonKey(name: 'payment_summaries') List<ShiftPaymentSummaryCreate>? get paymentSummaries {
  final value = _paymentSummaries;
  if (value == null) return null;
  if (_paymentSummaries is EqualUnmodifiableListView) return _paymentSummaries;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of ShiftClose
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ShiftCloseCopyWith<_ShiftClose> get copyWith => __$ShiftCloseCopyWithImpl<_ShiftClose>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ShiftCloseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ShiftClose&&(identical(other.closingCash, closingCash) || other.closingCash == closingCash)&&(identical(other.notes, notes) || other.notes == notes)&&const DeepCollectionEquality().equals(other._paymentSummaries, _paymentSummaries));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,closingCash,notes,const DeepCollectionEquality().hash(_paymentSummaries));

@override
String toString() {
  return 'ShiftClose(closingCash: $closingCash, notes: $notes, paymentSummaries: $paymentSummaries)';
}


}

/// @nodoc
abstract mixin class _$ShiftCloseCopyWith<$Res> implements $ShiftCloseCopyWith<$Res> {
  factory _$ShiftCloseCopyWith(_ShiftClose value, $Res Function(_ShiftClose) _then) = __$ShiftCloseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'closing_cash') double closingCash, String? notes,@JsonKey(name: 'payment_summaries') List<ShiftPaymentSummaryCreate>? paymentSummaries
});




}
/// @nodoc
class __$ShiftCloseCopyWithImpl<$Res>
    implements _$ShiftCloseCopyWith<$Res> {
  __$ShiftCloseCopyWithImpl(this._self, this._then);

  final _ShiftClose _self;
  final $Res Function(_ShiftClose) _then;

/// Create a copy of ShiftClose
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? closingCash = null,Object? notes = freezed,Object? paymentSummaries = freezed,}) {
  return _then(_ShiftClose(
closingCash: null == closingCash ? _self.closingCash : closingCash // ignore: cast_nullable_to_non_nullable
as double,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,paymentSummaries: freezed == paymentSummaries ? _self._paymentSummaries : paymentSummaries // ignore: cast_nullable_to_non_nullable
as List<ShiftPaymentSummaryCreate>?,
  ));
}


}


/// @nodoc
mixin _$ShiftPaymentSummaryCreate {

@JsonKey(name: 'payment_method') String get paymentMethod;@JsonKey(name: 'expected_amount') double get expectedAmount;@JsonKey(name: 'actual_amount') double get actualAmount;
/// Create a copy of ShiftPaymentSummaryCreate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ShiftPaymentSummaryCreateCopyWith<ShiftPaymentSummaryCreate> get copyWith => _$ShiftPaymentSummaryCreateCopyWithImpl<ShiftPaymentSummaryCreate>(this as ShiftPaymentSummaryCreate, _$identity);

  /// Serializes this ShiftPaymentSummaryCreate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShiftPaymentSummaryCreate&&(identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod)&&(identical(other.expectedAmount, expectedAmount) || other.expectedAmount == expectedAmount)&&(identical(other.actualAmount, actualAmount) || other.actualAmount == actualAmount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,paymentMethod,expectedAmount,actualAmount);

@override
String toString() {
  return 'ShiftPaymentSummaryCreate(paymentMethod: $paymentMethod, expectedAmount: $expectedAmount, actualAmount: $actualAmount)';
}


}

/// @nodoc
abstract mixin class $ShiftPaymentSummaryCreateCopyWith<$Res>  {
  factory $ShiftPaymentSummaryCreateCopyWith(ShiftPaymentSummaryCreate value, $Res Function(ShiftPaymentSummaryCreate) _then) = _$ShiftPaymentSummaryCreateCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'payment_method') String paymentMethod,@JsonKey(name: 'expected_amount') double expectedAmount,@JsonKey(name: 'actual_amount') double actualAmount
});




}
/// @nodoc
class _$ShiftPaymentSummaryCreateCopyWithImpl<$Res>
    implements $ShiftPaymentSummaryCreateCopyWith<$Res> {
  _$ShiftPaymentSummaryCreateCopyWithImpl(this._self, this._then);

  final ShiftPaymentSummaryCreate _self;
  final $Res Function(ShiftPaymentSummaryCreate) _then;

/// Create a copy of ShiftPaymentSummaryCreate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? paymentMethod = null,Object? expectedAmount = null,Object? actualAmount = null,}) {
  return _then(_self.copyWith(
paymentMethod: null == paymentMethod ? _self.paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as String,expectedAmount: null == expectedAmount ? _self.expectedAmount : expectedAmount // ignore: cast_nullable_to_non_nullable
as double,actualAmount: null == actualAmount ? _self.actualAmount : actualAmount // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [ShiftPaymentSummaryCreate].
extension ShiftPaymentSummaryCreatePatterns on ShiftPaymentSummaryCreate {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ShiftPaymentSummaryCreate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ShiftPaymentSummaryCreate() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ShiftPaymentSummaryCreate value)  $default,){
final _that = this;
switch (_that) {
case _ShiftPaymentSummaryCreate():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ShiftPaymentSummaryCreate value)?  $default,){
final _that = this;
switch (_that) {
case _ShiftPaymentSummaryCreate() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'payment_method')  String paymentMethod, @JsonKey(name: 'expected_amount')  double expectedAmount, @JsonKey(name: 'actual_amount')  double actualAmount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ShiftPaymentSummaryCreate() when $default != null:
return $default(_that.paymentMethod,_that.expectedAmount,_that.actualAmount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'payment_method')  String paymentMethod, @JsonKey(name: 'expected_amount')  double expectedAmount, @JsonKey(name: 'actual_amount')  double actualAmount)  $default,) {final _that = this;
switch (_that) {
case _ShiftPaymentSummaryCreate():
return $default(_that.paymentMethod,_that.expectedAmount,_that.actualAmount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'payment_method')  String paymentMethod, @JsonKey(name: 'expected_amount')  double expectedAmount, @JsonKey(name: 'actual_amount')  double actualAmount)?  $default,) {final _that = this;
switch (_that) {
case _ShiftPaymentSummaryCreate() when $default != null:
return $default(_that.paymentMethod,_that.expectedAmount,_that.actualAmount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ShiftPaymentSummaryCreate implements ShiftPaymentSummaryCreate {
  const _ShiftPaymentSummaryCreate({@JsonKey(name: 'payment_method') required this.paymentMethod, @JsonKey(name: 'expected_amount') this.expectedAmount = 0, @JsonKey(name: 'actual_amount') this.actualAmount = 0});
  factory _ShiftPaymentSummaryCreate.fromJson(Map<String, dynamic> json) => _$ShiftPaymentSummaryCreateFromJson(json);

@override@JsonKey(name: 'payment_method') final  String paymentMethod;
@override@JsonKey(name: 'expected_amount') final  double expectedAmount;
@override@JsonKey(name: 'actual_amount') final  double actualAmount;

/// Create a copy of ShiftPaymentSummaryCreate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ShiftPaymentSummaryCreateCopyWith<_ShiftPaymentSummaryCreate> get copyWith => __$ShiftPaymentSummaryCreateCopyWithImpl<_ShiftPaymentSummaryCreate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ShiftPaymentSummaryCreateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ShiftPaymentSummaryCreate&&(identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod)&&(identical(other.expectedAmount, expectedAmount) || other.expectedAmount == expectedAmount)&&(identical(other.actualAmount, actualAmount) || other.actualAmount == actualAmount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,paymentMethod,expectedAmount,actualAmount);

@override
String toString() {
  return 'ShiftPaymentSummaryCreate(paymentMethod: $paymentMethod, expectedAmount: $expectedAmount, actualAmount: $actualAmount)';
}


}

/// @nodoc
abstract mixin class _$ShiftPaymentSummaryCreateCopyWith<$Res> implements $ShiftPaymentSummaryCreateCopyWith<$Res> {
  factory _$ShiftPaymentSummaryCreateCopyWith(_ShiftPaymentSummaryCreate value, $Res Function(_ShiftPaymentSummaryCreate) _then) = __$ShiftPaymentSummaryCreateCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'payment_method') String paymentMethod,@JsonKey(name: 'expected_amount') double expectedAmount,@JsonKey(name: 'actual_amount') double actualAmount
});




}
/// @nodoc
class __$ShiftPaymentSummaryCreateCopyWithImpl<$Res>
    implements _$ShiftPaymentSummaryCreateCopyWith<$Res> {
  __$ShiftPaymentSummaryCreateCopyWithImpl(this._self, this._then);

  final _ShiftPaymentSummaryCreate _self;
  final $Res Function(_ShiftPaymentSummaryCreate) _then;

/// Create a copy of ShiftPaymentSummaryCreate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? paymentMethod = null,Object? expectedAmount = null,Object? actualAmount = null,}) {
  return _then(_ShiftPaymentSummaryCreate(
paymentMethod: null == paymentMethod ? _self.paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as String,expectedAmount: null == expectedAmount ? _self.expectedAmount : expectedAmount // ignore: cast_nullable_to_non_nullable
as double,actualAmount: null == actualAmount ? _self.actualAmount : actualAmount // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
