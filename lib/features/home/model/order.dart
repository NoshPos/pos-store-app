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
    @JsonKey(name: 'table_number') int? tableNumber,
    @JsonKey(name: 'guest_id') String? guestId,
    @JsonKey(name: 'shift_id') String? shiftId,
    @JsonKey(name: 'order_type') @Default('dine_in') String orderType,
    @Default('open') String status,
    @Default('pos') String channel,
    @JsonKey(name: 'gross_amount') @Default(0) double subtotal,
    @JsonKey(name: 'tax_amount') @Default(0) double taxAmount,
    @JsonKey(name: 'discount_amount') @Default(0) double discountAmount,
    @JsonKey(name: 'service_charge') @Default(0) double serviceCharge,
    @JsonKey(name: 'tip_amount') @Default(0) double tipAmount,
    @JsonKey(name: 'net_amount') @Default(0) double grandTotal,
    @JsonKey(name: 'payment_status') @Default('pending') String paymentStatus,
    String? notes,
    @JsonKey(name: 'cancel_reason') String? cancelReason,
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
    @JsonKey(name: 'product_name') @Default('') String productName,
    @Default(1) int quantity,
    @Default(0) double price,
    @JsonKey(name: 'tax_amount') @Default(0) double taxAmount,
    @JsonKey(name: 'discount_amount') @Default(0) double discountAmount,
    @Default(0) double total,
    @Default('active') String status,
    String? notes,
    @JsonKey(name: 'kitchen_status') String? kitchenStatus,
    @JsonKey(name: 'cancel_reason') String? cancelReason,
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
    @JsonKey(name: 'table_number') int? tableNumber,
    @JsonKey(name: 'shift_id') String? shiftId,
    @JsonKey(name: 'order_type') @Default('dine_in') String orderType,
    @Default('pos') String channel,
    @JsonKey(name: 'discount_amount') @Default(0) double discountAmount,
    @JsonKey(name: 'service_charge') @Default(0) double serviceCharge,
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
abstract class RefundCreate with _$RefundCreate {
  const factory RefundCreate({
    @JsonKey(name: 'payment_id') required String paymentId,
    required double amount,
    required String reason,
  }) = _RefundCreate;

  factory RefundCreate.fromJson(Map<String, dynamic> json) =>
      _$RefundCreateFromJson(json);
}

@freezed
abstract class OrderStatusUpdate with _$OrderStatusUpdate {
  const factory OrderStatusUpdate({required String status}) =
      _OrderStatusUpdate;

  factory OrderStatusUpdate.fromJson(Map<String, dynamic> json) =>
      _$OrderStatusUpdateFromJson(json);
}
