import 'package:freezed_annotation/freezed_annotation.dart';

part 'order.freezed.dart';
part 'order.g.dart';

@freezed
abstract class Order with _$Order {
  const factory Order({
    required String id,
    @JsonKey(name: 'store_id') required String storeId,
    @JsonKey(name: 'order_number') @Default('') String orderNumber,
    @JsonKey(name: 'employee_id') String? employeeId,
    @JsonKey(name: 'terminal_id') String? terminalId,
    @JsonKey(name: 'table_id') String? tableId,
    @JsonKey(name: 'order_type') @Default('dine_in') String orderType,
    @Default('pending') String status,
    @JsonKey(name: 'discount_amount') @Default(0) double discountAmount,
    @Default(0) double subtotal,
    @JsonKey(name: 'tax_amount') @Default(0) double taxAmount,
    @JsonKey(name: 'service_charge') @Default(0) double serviceCharge,
    @JsonKey(name: 'grand_total') @Default(0) double grandTotal,
    @JsonKey(name: 'payment_status') @Default('unpaid') String paymentStatus,
    String? notes,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    @Default([]) List<OrderItem> items,
  }) = _Order;

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);
}

@freezed
abstract class OrderItem with _$OrderItem {
  const factory OrderItem({
    required String id,
    @JsonKey(name: 'order_id') required String orderId,
    @JsonKey(name: 'product_id') @Default('') String productId,
    @JsonKey(name: 'product_name') @Default('Unknown') String productName,
    @Default(1) int quantity,
    @Default(0) double price,
    @JsonKey(name: 'tax_amount') @Default(0) double taxAmount,
    @Default(0) double total,
    String? notes,
    @Default([]) List<OrderItemModifier> modifiers,
  }) = _OrderItem;

  factory OrderItem.fromJson(Map<String, dynamic> json) =>
      _$OrderItemFromJson(json);
}

@freezed
abstract class OrderItemModifier with _$OrderItemModifier {
  const factory OrderItemModifier({
    required String id,
    @JsonKey(name: 'order_item_id') required String orderItemId,
    required String name,
    @Default(0) double price,
  }) = _OrderItemModifier;

  factory OrderItemModifier.fromJson(Map<String, dynamic> json) =>
      _$OrderItemModifierFromJson(json);
}

@freezed
abstract class OrderCreate with _$OrderCreate {
  const factory OrderCreate({
    @JsonKey(name: 'store_id') required String storeId,
    @JsonKey(name: 'employee_id') String? employeeId,
    @JsonKey(name: 'terminal_id') String? terminalId,
    @JsonKey(name: 'table_id') String? tableId,
    @JsonKey(name: 'order_type') @Default('dine_in') String orderType,
    @JsonKey(name: 'discount_amount') @Default(0) double discountAmount,
    String? notes,
    required List<OrderItemCreate> items,
  }) = _OrderCreate;

  factory OrderCreate.fromJson(Map<String, dynamic> json) =>
      _$OrderCreateFromJson(json);
}

@freezed
abstract class OrderItemCreate with _$OrderItemCreate {
  const factory OrderItemCreate({
    @JsonKey(name: 'product_id') required String productId,
    @Default(1) int quantity,
    required double price,
    String? notes,
  }) = _OrderItemCreate;

  factory OrderItemCreate.fromJson(Map<String, dynamic> json) =>
      _$OrderItemCreateFromJson(json);
}

@freezed
abstract class PaymentCreate with _$PaymentCreate {
  const factory PaymentCreate({
    @JsonKey(name: 'order_id') required String orderId,
    @JsonKey(name: 'payment_method') required String paymentMethod,
    required double amount,
    @JsonKey(name: 'tip_amount') @Default(0) double tipAmount,
    String? reference,
  }) = _PaymentCreate;

  factory PaymentCreate.fromJson(Map<String, dynamic> json) =>
      _$PaymentCreateFromJson(json);
}

@freezed
abstract class OrderStatusUpdate with _$OrderStatusUpdate {
  const factory OrderStatusUpdate({required String status}) =
      _OrderStatusUpdate;

  factory OrderStatusUpdate.fromJson(Map<String, dynamic> json) =>
      _$OrderStatusUpdateFromJson(json);
}
