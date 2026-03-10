import 'package:freezed_annotation/freezed_annotation.dart';

part 'kot.freezed.dart';
part 'kot.g.dart';

@freezed
abstract class KitchenOrderTicket with _$KitchenOrderTicket {
  const factory KitchenOrderTicket({
    required String id,
    @JsonKey(name: 'order_id') required String orderId,
    @JsonKey(name: 'order_number') @Default('') String orderNumber,
    @JsonKey(name: 'order_type') @Default('dine_in') String orderType,
    @JsonKey(name: 'table_label') String? tableLabel,
    @Default('PENDING') String status,
    @Default([]) List<KotItem> items,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _KitchenOrderTicket;

  factory KitchenOrderTicket.fromJson(Map<String, dynamic> json) =>
      _$KitchenOrderTicketFromJson(json);
}

@freezed
abstract class KotItem with _$KotItem {
  const factory KotItem({
    required String id,
    @JsonKey(name: 'product_name') required String productName,
    @Default(1) int quantity,
    String? notes,
  }) = _KotItem;

  factory KotItem.fromJson(Map<String, dynamic> json) =>
      _$KotItemFromJson(json);
}

@freezed
abstract class KotStatusUpdate with _$KotStatusUpdate {
  const factory KotStatusUpdate({required String status}) = _KotStatusUpdate;

  factory KotStatusUpdate.fromJson(Map<String, dynamic> json) =>
      _$KotStatusUpdateFromJson(json);
}
