// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Order _$OrderFromJson(Map<String, dynamic> json) => _Order(
  id: json['id'] as String,
  storeId: json['store_id'] as String,
  orderNumber: json['order_number'] as String? ?? '',
  employeeId: json['employee_id'] as String?,
  terminalId: json['terminal_id'] as String?,
  tableId: json['table_id'] as String?,
  orderType: json['order_type'] as String? ?? 'dine_in',
  status: json['status'] as String? ?? 'pending',
  discountAmount: (json['discount_amount'] as num?)?.toDouble() ?? 0,
  subtotal: (json['subtotal'] as num?)?.toDouble() ?? 0,
  taxAmount: (json['tax_amount'] as num?)?.toDouble() ?? 0,
  serviceCharge: (json['service_charge'] as num?)?.toDouble() ?? 0,
  grandTotal: (json['grand_total'] as num?)?.toDouble() ?? 0,
  paymentStatus: json['payment_status'] as String? ?? 'unpaid',
  notes: json['notes'] as String?,
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
  updatedAt: json['updated_at'] == null
      ? null
      : DateTime.parse(json['updated_at'] as String),
  items:
      (json['items'] as List<dynamic>?)
          ?.map((e) => OrderItem.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$OrderToJson(_Order instance) => <String, dynamic>{
  'id': instance.id,
  'store_id': instance.storeId,
  'order_number': instance.orderNumber,
  'employee_id': instance.employeeId,
  'terminal_id': instance.terminalId,
  'table_id': instance.tableId,
  'order_type': instance.orderType,
  'status': instance.status,
  'discount_amount': instance.discountAmount,
  'subtotal': instance.subtotal,
  'tax_amount': instance.taxAmount,
  'service_charge': instance.serviceCharge,
  'grand_total': instance.grandTotal,
  'payment_status': instance.paymentStatus,
  'notes': instance.notes,
  'created_at': instance.createdAt?.toIso8601String(),
  'updated_at': instance.updatedAt?.toIso8601String(),
  'items': instance.items,
};

_OrderItem _$OrderItemFromJson(Map<String, dynamic> json) => _OrderItem(
  id: json['id'] as String,
  orderId: json['order_id'] as String,
  productId: json['product_id'] as String? ?? '',
  productName: json['product_name'] as String? ?? 'Unknown',
  quantity: (json['quantity'] as num?)?.toInt() ?? 1,
  price: (json['price'] as num?)?.toDouble() ?? 0,
  taxAmount: (json['tax_amount'] as num?)?.toDouble() ?? 0,
  total: (json['total'] as num?)?.toDouble() ?? 0,
  notes: json['notes'] as String?,
  modifiers:
      (json['modifiers'] as List<dynamic>?)
          ?.map((e) => OrderItemModifier.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$OrderItemToJson(_OrderItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'order_id': instance.orderId,
      'product_id': instance.productId,
      'product_name': instance.productName,
      'quantity': instance.quantity,
      'price': instance.price,
      'tax_amount': instance.taxAmount,
      'total': instance.total,
      'notes': instance.notes,
      'modifiers': instance.modifiers,
    };

_OrderItemModifier _$OrderItemModifierFromJson(Map<String, dynamic> json) =>
    _OrderItemModifier(
      id: json['id'] as String,
      orderItemId: json['order_item_id'] as String,
      name: json['name'] as String,
      price: (json['price'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$OrderItemModifierToJson(_OrderItemModifier instance) =>
    <String, dynamic>{
      'id': instance.id,
      'order_item_id': instance.orderItemId,
      'name': instance.name,
      'price': instance.price,
    };

_OrderCreate _$OrderCreateFromJson(Map<String, dynamic> json) => _OrderCreate(
  storeId: json['store_id'] as String,
  employeeId: json['employee_id'] as String?,
  terminalId: json['terminal_id'] as String?,
  tableId: json['table_id'] as String?,
  orderType: json['order_type'] as String? ?? 'dine_in',
  discountAmount: (json['discount_amount'] as num?)?.toDouble() ?? 0,
  notes: json['notes'] as String?,
  items: (json['items'] as List<dynamic>)
      .map((e) => OrderItemCreate.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$OrderCreateToJson(_OrderCreate instance) =>
    <String, dynamic>{
      'store_id': instance.storeId,
      'employee_id': instance.employeeId,
      'terminal_id': instance.terminalId,
      'table_id': instance.tableId,
      'order_type': instance.orderType,
      'discount_amount': instance.discountAmount,
      'notes': instance.notes,
      'items': instance.items,
    };

_OrderItemCreate _$OrderItemCreateFromJson(Map<String, dynamic> json) =>
    _OrderItemCreate(
      productId: json['product_id'] as String,
      quantity: (json['quantity'] as num?)?.toInt() ?? 1,
      price: (json['price'] as num).toDouble(),
      notes: json['notes'] as String?,
    );

Map<String, dynamic> _$OrderItemCreateToJson(_OrderItemCreate instance) =>
    <String, dynamic>{
      'product_id': instance.productId,
      'quantity': instance.quantity,
      'price': instance.price,
      'notes': instance.notes,
    };

_PaymentCreate _$PaymentCreateFromJson(Map<String, dynamic> json) =>
    _PaymentCreate(
      orderId: json['order_id'] as String,
      paymentMethod: json['payment_method'] as String,
      amount: (json['amount'] as num).toDouble(),
      tipAmount: (json['tip_amount'] as num?)?.toDouble() ?? 0,
      reference: json['reference'] as String?,
    );

Map<String, dynamic> _$PaymentCreateToJson(_PaymentCreate instance) =>
    <String, dynamic>{
      'order_id': instance.orderId,
      'payment_method': instance.paymentMethod,
      'amount': instance.amount,
      'tip_amount': instance.tipAmount,
      'reference': instance.reference,
    };

_OrderStatusUpdate _$OrderStatusUpdateFromJson(Map<String, dynamic> json) =>
    _OrderStatusUpdate(status: json['status'] as String);

Map<String, dynamic> _$OrderStatusUpdateToJson(_OrderStatusUpdate instance) =>
    <String, dynamic>{'status': instance.status};
