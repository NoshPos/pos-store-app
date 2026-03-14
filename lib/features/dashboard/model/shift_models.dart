import 'package:freezed_annotation/freezed_annotation.dart';

part 'shift_models.freezed.dart';
part 'shift_models.g.dart';

// ---------------------------------------------------------------------------
// Shift Response
// ---------------------------------------------------------------------------

@freezed
abstract class Shift with _$Shift {
  const factory Shift({
    required String id,
    @JsonKey(name: 'store_id') required String storeId,
    @JsonKey(name: 'terminal_id') String? terminalId,
    @JsonKey(name: 'employee_id') required String employeeId,
    required String status,
    @JsonKey(name: 'opening_cash') @Default(0) double openingCash,
    @JsonKey(name: 'closing_cash') double? closingCash,
    @JsonKey(name: 'expected_cash') double? expectedCash,
    @JsonKey(name: 'cash_variance') double? cashVariance,
    @JsonKey(name: 'total_sales') @Default(0) double totalSales,
    @JsonKey(name: 'total_orders') @Default(0) int totalOrders,
    String? notes,
    @JsonKey(name: 'started_at') DateTime? startedAt,
    @JsonKey(name: 'ended_at') DateTime? endedAt,
    @JsonKey(name: 'payment_summaries')
    @Default([])
    List<ShiftPaymentSummary> paymentSummaries,
  }) = _Shift;

  factory Shift.fromJson(Map<String, dynamic> json) => _$ShiftFromJson(json);
}

// ---------------------------------------------------------------------------
// Shift Payment Summary
// ---------------------------------------------------------------------------

@freezed
abstract class ShiftPaymentSummary with _$ShiftPaymentSummary {
  const factory ShiftPaymentSummary({
    required String id,
    @JsonKey(name: 'shift_id') required String shiftId,
    @JsonKey(name: 'payment_method') required String paymentMethod,
    @JsonKey(name: 'expected_amount') @Default(0) double expectedAmount,
    @JsonKey(name: 'actual_amount') @Default(0) double actualAmount,
    @Default(0) double variance,
  }) = _ShiftPaymentSummary;

  factory ShiftPaymentSummary.fromJson(Map<String, dynamic> json) =>
      _$ShiftPaymentSummaryFromJson(json);
}

// ---------------------------------------------------------------------------
// Shift Open
// ---------------------------------------------------------------------------

@freezed
abstract class ShiftOpen with _$ShiftOpen {
  const factory ShiftOpen({
    @JsonKey(name: 'store_id') required String storeId,
    @JsonKey(name: 'terminal_id') String? terminalId,
    @JsonKey(name: 'employee_id') required String employeeId,
    @JsonKey(name: 'opening_cash') @Default(0) double openingCash,
    String? notes,
  }) = _ShiftOpen;

  factory ShiftOpen.fromJson(Map<String, dynamic> json) =>
      _$ShiftOpenFromJson(json);
}

// ---------------------------------------------------------------------------
// Shift Close
// ---------------------------------------------------------------------------

@freezed
abstract class ShiftClose with _$ShiftClose {
  const factory ShiftClose({
    @JsonKey(name: 'closing_cash') required double closingCash,
    String? notes,
    @JsonKey(name: 'payment_summaries')
    List<ShiftPaymentSummaryCreate>? paymentSummaries,
  }) = _ShiftClose;

  factory ShiftClose.fromJson(Map<String, dynamic> json) =>
      _$ShiftCloseFromJson(json);
}

// ---------------------------------------------------------------------------
// Shift Payment Summary Create (for closing a shift)
// ---------------------------------------------------------------------------

@freezed
abstract class ShiftPaymentSummaryCreate with _$ShiftPaymentSummaryCreate {
  const factory ShiftPaymentSummaryCreate({
    @JsonKey(name: 'payment_method') required String paymentMethod,
    @JsonKey(name: 'expected_amount') @Default(0) double expectedAmount,
    @JsonKey(name: 'actual_amount') @Default(0) double actualAmount,
  }) = _ShiftPaymentSummaryCreate;

  factory ShiftPaymentSummaryCreate.fromJson(Map<String, dynamic> json) =>
      _$ShiftPaymentSummaryCreateFromJson(json);
}
