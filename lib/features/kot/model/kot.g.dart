// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kot.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_KitchenOrderTicket _$KitchenOrderTicketFromJson(Map<String, dynamic> json) =>
    _KitchenOrderTicket(
      id: json['id'] as String,
      orderId: json['order_id'] as String,
      orderNumber: json['order_number'] as String? ?? '',
      orderType: json['order_type'] as String? ?? 'dine_in',
      tableLabel: json['table_label'] as String?,
      status: json['status'] as String? ?? 'PENDING',
      items:
          (json['items'] as List<dynamic>?)
              ?.map((e) => KotItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$KitchenOrderTicketToJson(_KitchenOrderTicket instance) =>
    <String, dynamic>{
      'id': instance.id,
      'order_id': instance.orderId,
      'order_number': instance.orderNumber,
      'order_type': instance.orderType,
      'table_label': instance.tableLabel,
      'status': instance.status,
      'items': instance.items,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

_KotItem _$KotItemFromJson(Map<String, dynamic> json) => _KotItem(
  id: json['id'] as String,
  productName: json['product_name'] as String,
  quantity: (json['quantity'] as num?)?.toInt() ?? 1,
  notes: json['notes'] as String?,
);

Map<String, dynamic> _$KotItemToJson(_KotItem instance) => <String, dynamic>{
  'id': instance.id,
  'product_name': instance.productName,
  'quantity': instance.quantity,
  'notes': instance.notes,
};

_KotStatusUpdate _$KotStatusUpdateFromJson(Map<String, dynamic> json) =>
    _KotStatusUpdate(status: json['status'] as String);

Map<String, dynamic> _$KotStatusUpdateToJson(_KotStatusUpdate instance) =>
    <String, dynamic>{'status': instance.status};
