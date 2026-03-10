// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Store _$StoreFromJson(Map<String, dynamic> json) => _Store(
  id: json['id'] as String,
  ownerId: json['owner_id'] as String,
  name: json['name'] as String,
  address: json['location'] as String? ?? '',
  city: json['city'] as String? ?? '',
  phone: json['phone'] as String? ?? '',
  email: json['email'] as String? ?? '',
  gstNumber: json['gst_number'] as String?,
  currency: json['currency'] as String? ?? 'INR',
  timezone: json['timezone'] as String? ?? 'Asia/Kolkata',
  numTables: (json['table_count'] as num?)?.toInt() ?? 0,
  isActive: json['is_active'] as bool? ?? true,
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
  tables:
      (json['tables'] as List<dynamic>?)
          ?.map((e) => DineInTable.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$StoreToJson(_Store instance) => <String, dynamic>{
  'id': instance.id,
  'owner_id': instance.ownerId,
  'name': instance.name,
  'location': instance.address,
  'city': instance.city,
  'phone': instance.phone,
  'email': instance.email,
  'gst_number': instance.gstNumber,
  'currency': instance.currency,
  'timezone': instance.timezone,
  'table_count': instance.numTables,
  'is_active': instance.isActive,
  'created_at': instance.createdAt?.toIso8601String(),
  'tables': instance.tables,
};
