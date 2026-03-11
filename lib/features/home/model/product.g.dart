// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Product _$ProductFromJson(Map<String, dynamic> json) => _Product(
  id: json['id'] as String,
  storeId: json['store_id'] as String,
  categoryId: json['category_id'] as String?,
  name: json['name'] as String,
  description: json['description'] as String?,
  price: (json['price'] as num).toDouble(),
  taxPercent: (json['tax_percent'] as num?)?.toDouble() ?? 0,
  isActive: json['is_active'] as bool? ?? true,
  sortOrder: (json['sort_order'] as num?)?.toInt() ?? 0,
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
);

Map<String, dynamic> _$ProductToJson(_Product instance) => <String, dynamic>{
  'id': instance.id,
  'store_id': instance.storeId,
  'category_id': instance.categoryId,
  'name': instance.name,
  'description': instance.description,
  'price': instance.price,
  'tax_percent': instance.taxPercent,
  'is_active': instance.isActive,
  'sort_order': instance.sortOrder,
  'created_at': instance.createdAt?.toIso8601String(),
};
