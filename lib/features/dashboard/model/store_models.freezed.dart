// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'store_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StoreCreate {

 String get name;@JsonKey(name: 'location') String? get address; String? get city; String? get phone;@JsonKey(name: 'table_count') int get numTables;
/// Create a copy of StoreCreate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StoreCreateCopyWith<StoreCreate> get copyWith => _$StoreCreateCopyWithImpl<StoreCreate>(this as StoreCreate, _$identity);

  /// Serializes this StoreCreate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StoreCreate&&(identical(other.name, name) || other.name == name)&&(identical(other.address, address) || other.address == address)&&(identical(other.city, city) || other.city == city)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.numTables, numTables) || other.numTables == numTables));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,address,city,phone,numTables);

@override
String toString() {
  return 'StoreCreate(name: $name, address: $address, city: $city, phone: $phone, numTables: $numTables)';
}


}

/// @nodoc
abstract mixin class $StoreCreateCopyWith<$Res>  {
  factory $StoreCreateCopyWith(StoreCreate value, $Res Function(StoreCreate) _then) = _$StoreCreateCopyWithImpl;
@useResult
$Res call({
 String name,@JsonKey(name: 'location') String? address, String? city, String? phone,@JsonKey(name: 'table_count') int numTables
});




}
/// @nodoc
class _$StoreCreateCopyWithImpl<$Res>
    implements $StoreCreateCopyWith<$Res> {
  _$StoreCreateCopyWithImpl(this._self, this._then);

  final StoreCreate _self;
  final $Res Function(StoreCreate) _then;

/// Create a copy of StoreCreate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? address = freezed,Object? city = freezed,Object? phone = freezed,Object? numTables = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,numTables: null == numTables ? _self.numTables : numTables // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [StoreCreate].
extension StoreCreatePatterns on StoreCreate {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StoreCreate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StoreCreate() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StoreCreate value)  $default,){
final _that = this;
switch (_that) {
case _StoreCreate():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StoreCreate value)?  $default,){
final _that = this;
switch (_that) {
case _StoreCreate() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name, @JsonKey(name: 'location')  String? address,  String? city,  String? phone, @JsonKey(name: 'table_count')  int numTables)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StoreCreate() when $default != null:
return $default(_that.name,_that.address,_that.city,_that.phone,_that.numTables);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name, @JsonKey(name: 'location')  String? address,  String? city,  String? phone, @JsonKey(name: 'table_count')  int numTables)  $default,) {final _that = this;
switch (_that) {
case _StoreCreate():
return $default(_that.name,_that.address,_that.city,_that.phone,_that.numTables);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name, @JsonKey(name: 'location')  String? address,  String? city,  String? phone, @JsonKey(name: 'table_count')  int numTables)?  $default,) {final _that = this;
switch (_that) {
case _StoreCreate() when $default != null:
return $default(_that.name,_that.address,_that.city,_that.phone,_that.numTables);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StoreCreate implements StoreCreate {
  const _StoreCreate({required this.name, @JsonKey(name: 'location') this.address, this.city, this.phone, @JsonKey(name: 'table_count') this.numTables = 0});
  factory _StoreCreate.fromJson(Map<String, dynamic> json) => _$StoreCreateFromJson(json);

@override final  String name;
@override@JsonKey(name: 'location') final  String? address;
@override final  String? city;
@override final  String? phone;
@override@JsonKey(name: 'table_count') final  int numTables;

/// Create a copy of StoreCreate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StoreCreateCopyWith<_StoreCreate> get copyWith => __$StoreCreateCopyWithImpl<_StoreCreate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StoreCreateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StoreCreate&&(identical(other.name, name) || other.name == name)&&(identical(other.address, address) || other.address == address)&&(identical(other.city, city) || other.city == city)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.numTables, numTables) || other.numTables == numTables));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,address,city,phone,numTables);

@override
String toString() {
  return 'StoreCreate(name: $name, address: $address, city: $city, phone: $phone, numTables: $numTables)';
}


}

/// @nodoc
abstract mixin class _$StoreCreateCopyWith<$Res> implements $StoreCreateCopyWith<$Res> {
  factory _$StoreCreateCopyWith(_StoreCreate value, $Res Function(_StoreCreate) _then) = __$StoreCreateCopyWithImpl;
@override @useResult
$Res call({
 String name,@JsonKey(name: 'location') String? address, String? city, String? phone,@JsonKey(name: 'table_count') int numTables
});




}
/// @nodoc
class __$StoreCreateCopyWithImpl<$Res>
    implements _$StoreCreateCopyWith<$Res> {
  __$StoreCreateCopyWithImpl(this._self, this._then);

  final _StoreCreate _self;
  final $Res Function(_StoreCreate) _then;

/// Create a copy of StoreCreate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? address = freezed,Object? city = freezed,Object? phone = freezed,Object? numTables = null,}) {
  return _then(_StoreCreate(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,numTables: null == numTables ? _self.numTables : numTables // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$StoreUpdate {

 String? get name;@JsonKey(name: 'location') String? get address; String? get city; String? get phone;@JsonKey(name: 'table_count') int? get numTables;
/// Create a copy of StoreUpdate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StoreUpdateCopyWith<StoreUpdate> get copyWith => _$StoreUpdateCopyWithImpl<StoreUpdate>(this as StoreUpdate, _$identity);

  /// Serializes this StoreUpdate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StoreUpdate&&(identical(other.name, name) || other.name == name)&&(identical(other.address, address) || other.address == address)&&(identical(other.city, city) || other.city == city)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.numTables, numTables) || other.numTables == numTables));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,address,city,phone,numTables);

@override
String toString() {
  return 'StoreUpdate(name: $name, address: $address, city: $city, phone: $phone, numTables: $numTables)';
}


}

/// @nodoc
abstract mixin class $StoreUpdateCopyWith<$Res>  {
  factory $StoreUpdateCopyWith(StoreUpdate value, $Res Function(StoreUpdate) _then) = _$StoreUpdateCopyWithImpl;
@useResult
$Res call({
 String? name,@JsonKey(name: 'location') String? address, String? city, String? phone,@JsonKey(name: 'table_count') int? numTables
});




}
/// @nodoc
class _$StoreUpdateCopyWithImpl<$Res>
    implements $StoreUpdateCopyWith<$Res> {
  _$StoreUpdateCopyWithImpl(this._self, this._then);

  final StoreUpdate _self;
  final $Res Function(StoreUpdate) _then;

/// Create a copy of StoreUpdate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? address = freezed,Object? city = freezed,Object? phone = freezed,Object? numTables = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,numTables: freezed == numTables ? _self.numTables : numTables // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [StoreUpdate].
extension StoreUpdatePatterns on StoreUpdate {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StoreUpdate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StoreUpdate() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StoreUpdate value)  $default,){
final _that = this;
switch (_that) {
case _StoreUpdate():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StoreUpdate value)?  $default,){
final _that = this;
switch (_that) {
case _StoreUpdate() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? name, @JsonKey(name: 'location')  String? address,  String? city,  String? phone, @JsonKey(name: 'table_count')  int? numTables)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StoreUpdate() when $default != null:
return $default(_that.name,_that.address,_that.city,_that.phone,_that.numTables);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? name, @JsonKey(name: 'location')  String? address,  String? city,  String? phone, @JsonKey(name: 'table_count')  int? numTables)  $default,) {final _that = this;
switch (_that) {
case _StoreUpdate():
return $default(_that.name,_that.address,_that.city,_that.phone,_that.numTables);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? name, @JsonKey(name: 'location')  String? address,  String? city,  String? phone, @JsonKey(name: 'table_count')  int? numTables)?  $default,) {final _that = this;
switch (_that) {
case _StoreUpdate() when $default != null:
return $default(_that.name,_that.address,_that.city,_that.phone,_that.numTables);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StoreUpdate implements StoreUpdate {
  const _StoreUpdate({this.name, @JsonKey(name: 'location') this.address, this.city, this.phone, @JsonKey(name: 'table_count') this.numTables});
  factory _StoreUpdate.fromJson(Map<String, dynamic> json) => _$StoreUpdateFromJson(json);

@override final  String? name;
@override@JsonKey(name: 'location') final  String? address;
@override final  String? city;
@override final  String? phone;
@override@JsonKey(name: 'table_count') final  int? numTables;

/// Create a copy of StoreUpdate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StoreUpdateCopyWith<_StoreUpdate> get copyWith => __$StoreUpdateCopyWithImpl<_StoreUpdate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StoreUpdateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StoreUpdate&&(identical(other.name, name) || other.name == name)&&(identical(other.address, address) || other.address == address)&&(identical(other.city, city) || other.city == city)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.numTables, numTables) || other.numTables == numTables));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,address,city,phone,numTables);

@override
String toString() {
  return 'StoreUpdate(name: $name, address: $address, city: $city, phone: $phone, numTables: $numTables)';
}


}

/// @nodoc
abstract mixin class _$StoreUpdateCopyWith<$Res> implements $StoreUpdateCopyWith<$Res> {
  factory _$StoreUpdateCopyWith(_StoreUpdate value, $Res Function(_StoreUpdate) _then) = __$StoreUpdateCopyWithImpl;
@override @useResult
$Res call({
 String? name,@JsonKey(name: 'location') String? address, String? city, String? phone,@JsonKey(name: 'table_count') int? numTables
});




}
/// @nodoc
class __$StoreUpdateCopyWithImpl<$Res>
    implements _$StoreUpdateCopyWith<$Res> {
  __$StoreUpdateCopyWithImpl(this._self, this._then);

  final _StoreUpdate _self;
  final $Res Function(_StoreUpdate) _then;

/// Create a copy of StoreUpdate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? address = freezed,Object? city = freezed,Object? phone = freezed,Object? numTables = freezed,}) {
  return _then(_StoreUpdate(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,numTables: freezed == numTables ? _self.numTables : numTables // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$TablesResponse {

 List<String> get tables;
/// Create a copy of TablesResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TablesResponseCopyWith<TablesResponse> get copyWith => _$TablesResponseCopyWithImpl<TablesResponse>(this as TablesResponse, _$identity);

  /// Serializes this TablesResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TablesResponse&&const DeepCollectionEquality().equals(other.tables, tables));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(tables));

@override
String toString() {
  return 'TablesResponse(tables: $tables)';
}


}

/// @nodoc
abstract mixin class $TablesResponseCopyWith<$Res>  {
  factory $TablesResponseCopyWith(TablesResponse value, $Res Function(TablesResponse) _then) = _$TablesResponseCopyWithImpl;
@useResult
$Res call({
 List<String> tables
});




}
/// @nodoc
class _$TablesResponseCopyWithImpl<$Res>
    implements $TablesResponseCopyWith<$Res> {
  _$TablesResponseCopyWithImpl(this._self, this._then);

  final TablesResponse _self;
  final $Res Function(TablesResponse) _then;

/// Create a copy of TablesResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? tables = null,}) {
  return _then(_self.copyWith(
tables: null == tables ? _self.tables : tables // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [TablesResponse].
extension TablesResponsePatterns on TablesResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TablesResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TablesResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TablesResponse value)  $default,){
final _that = this;
switch (_that) {
case _TablesResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TablesResponse value)?  $default,){
final _that = this;
switch (_that) {
case _TablesResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<String> tables)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TablesResponse() when $default != null:
return $default(_that.tables);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<String> tables)  $default,) {final _that = this;
switch (_that) {
case _TablesResponse():
return $default(_that.tables);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<String> tables)?  $default,) {final _that = this;
switch (_that) {
case _TablesResponse() when $default != null:
return $default(_that.tables);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TablesResponse implements TablesResponse {
  const _TablesResponse({final  List<String> tables = const []}): _tables = tables;
  factory _TablesResponse.fromJson(Map<String, dynamic> json) => _$TablesResponseFromJson(json);

 final  List<String> _tables;
@override@JsonKey() List<String> get tables {
  if (_tables is EqualUnmodifiableListView) return _tables;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tables);
}


/// Create a copy of TablesResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TablesResponseCopyWith<_TablesResponse> get copyWith => __$TablesResponseCopyWithImpl<_TablesResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TablesResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TablesResponse&&const DeepCollectionEquality().equals(other._tables, _tables));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_tables));

@override
String toString() {
  return 'TablesResponse(tables: $tables)';
}


}

/// @nodoc
abstract mixin class _$TablesResponseCopyWith<$Res> implements $TablesResponseCopyWith<$Res> {
  factory _$TablesResponseCopyWith(_TablesResponse value, $Res Function(_TablesResponse) _then) = __$TablesResponseCopyWithImpl;
@override @useResult
$Res call({
 List<String> tables
});




}
/// @nodoc
class __$TablesResponseCopyWithImpl<$Res>
    implements _$TablesResponseCopyWith<$Res> {
  __$TablesResponseCopyWithImpl(this._self, this._then);

  final _TablesResponse _self;
  final $Res Function(_TablesResponse) _then;

/// Create a copy of TablesResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? tables = null,}) {
  return _then(_TablesResponse(
tables: null == tables ? _self._tables : tables // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
