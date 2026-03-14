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
  tableNumber: (json['table_number'] as num?)?.toInt(),
  guestId: json['guest_id'] as String?,
  shiftId: json['shift_id'] as String?,
  orderType: json['order_type'] as String? ?? 'dine_in',
  status: json['status'] as String? ?? 'open',
  channel: json['channel'] as String? ?? 'pos',
  subtotal: (json['gross_amount'] as num?)?.toDouble() ?? 0,
  taxAmount: (json['tax_amount'] as num?)?.toDouble() ?? 0,
  discountAmount: (json['discount_amount'] as num?)?.toDouble() ?? 0,
  serviceCharge: (json['service_charge'] as num?)?.toDouble() ?? 0,
  tipAmount: (json['tip_amount'] as num?)?.toDouble() ?? 0,
  grandTotal: (json['net_amount'] as num?)?.toDouble() ?? 0,
  paymentStatus: json['payment_status'] as String? ?? 'pending',
  notes: json['notes'] as String?,
  cancelReason: json['cancel_reason'] as String?,
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
  'table_number': instance.tableNumber,
  'guest_id': instance.guestId,
  'shift_id': instance.shiftId,
  'order_type': instance.orderType,
  'status': instance.status,
  'channel': instance.channel,
  'gross_amount': instance.subtotal,
  'tax_amount': instance.taxAmount,
  'discount_amount': instance.discountAmount,
  'service_charge': instance.serviceCharge,
  'tip_amount': instance.tipAmount,
  'net_amount': instance.grandTotal,
  'payment_status': instance.paymentStatus,
  'notes': instance.notes,
  'cancel_reason': instance.cancelReason,
  'created_at': instance.createdAt?.toIso8601String(),
  'updated_at': instance.updatedAt?.toIso8601String(),
  'items': instance.items,
};

_OrderItem _$OrderItemFromJson(Map<String, dynamic> json) => _OrderItem(
  id: json['id'] as String,
  orderId: json['order_id'] as String,
  productId: json['product_id'] as String? ?? '',
  productName: json['product_name'] as String? ?? '',
  quantity: (json['quantity'] as num?)?.toInt() ?? 1,
  price: (json['price'] as num?)?.toDouble() ?? 0,
  taxAmount: (json['tax_amount'] as num?)?.toDouble() ?? 0,
  discountAmount: (json['discount_amount'] as num?)?.toDouble() ?? 0,
  total: (json['total'] as num?)?.toDouble() ?? 0,
  status: json['status'] as String? ?? 'active',
  notes: json['notes'] as String?,
  kitchenStatus: json['kitchen_status'] as String?,
  cancelReason: json['cancel_reason'] as String?,
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
      'discount_amount': instance.discountAmount,
      'total': instance.total,
      'status': instance.status,
      'notes': instance.notes,
      'kitchen_status': instance.kitchenStatus,
      'cancel_reason': instance.cancelReason,
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
  tableNumber: (json['table_number'] as num?)?.toInt(),
  shiftId: json['shift_id'] as String?,
  orderType: json['order_type'] as String? ?? 'dine_in',
  channel: json['channel'] as String? ?? 'pos',
  discountAmount: (json['discount_amount'] as num?)?.toDouble() ?? 0,
  serviceCharge: (json['service_charge'] as num?)?.toDouble() ?? 0,
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
      'table_number': instance.tableNumber,
      'shift_id': instance.shiftId,
      'order_type': instance.orderType,
      'channel': instance.channel,
      'discount_amount': instance.discountAmount,
      'service_charge': instance.serviceCharge,
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

_RefundCreate _$RefundCreateFromJson(Map<String, dynamic> json) =>
    _RefundCreate(
      paymentId: json['payment_id'] as String,
      amount: (json['amount'] as num).toDouble(),
      reason: json['reason'] as String,
    );

Map<String, dynamic> _$RefundCreateToJson(_RefundCreate instance) =>
    <String, dynamic>{
      'payment_id': instance.paymentId,
      'amount': instance.amount,
      'reason': instance.reason,
    };

_OrderStatusUpdate _$OrderStatusUpdateFromJson(Map<String, dynamic> json) =>
    _OrderStatusUpdate(status: json['status'] as String);

Map<String, dynamic> _$OrderStatusUpdateToJson(_OrderStatusUpdate instance) =>
    <String, dynamic>{'status': instance.status};
