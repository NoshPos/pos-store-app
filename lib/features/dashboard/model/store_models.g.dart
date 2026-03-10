// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StoreCreate _$StoreCreateFromJson(Map<String, dynamic> json) => _StoreCreate(
  name: json['name'] as String,
  address: json['location'] as String?,
  city: json['city'] as String?,
  phone: json['phone'] as String?,
  numTables: (json['table_count'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$StoreCreateToJson(_StoreCreate instance) =>
    <String, dynamic>{
      'name': instance.name,
      'location': instance.address,
      'city': instance.city,
      'phone': instance.phone,
      'table_count': instance.numTables,
    };

_StoreUpdate _$StoreUpdateFromJson(Map<String, dynamic> json) => _StoreUpdate(
  name: json['name'] as String?,
  address: json['location'] as String?,
  city: json['city'] as String?,
  phone: json['phone'] as String?,
  numTables: (json['table_count'] as num?)?.toInt(),
);

Map<String, dynamic> _$StoreUpdateToJson(_StoreUpdate instance) =>
    <String, dynamic>{
      'name': instance.name,
      'location': instance.address,
      'city': instance.city,
      'phone': instance.phone,
      'table_count': instance.numTables,
    };

_TablesResponse _$TablesResponseFromJson(Map<String, dynamic> json) =>
    _TablesResponse(
      tables:
          (json['tables'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$TablesResponseToJson(_TablesResponse instance) =>
    <String, dynamic>{'tables': instance.tables};
