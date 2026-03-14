// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shift_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Shift _$ShiftFromJson(Map<String, dynamic> json) => _Shift(
  id: json['id'] as String,
  storeId: json['store_id'] as String,
  terminalId: json['terminal_id'] as String?,
  employeeId: json['employee_id'] as String,
  status: json['status'] as String,
  openingCash: (json['opening_cash'] as num?)?.toDouble() ?? 0,
  closingCash: (json['closing_cash'] as num?)?.toDouble(),
  expectedCash: (json['expected_cash'] as num?)?.toDouble(),
  cashVariance: (json['cash_variance'] as num?)?.toDouble(),
  totalSales: (json['total_sales'] as num?)?.toDouble() ?? 0,
  totalOrders: (json['total_orders'] as num?)?.toInt() ?? 0,
  notes: json['notes'] as String?,
  startedAt: json['started_at'] == null
      ? null
      : DateTime.parse(json['started_at'] as String),
  endedAt: json['ended_at'] == null
      ? null
      : DateTime.parse(json['ended_at'] as String),
  paymentSummaries:
      (json['payment_summaries'] as List<dynamic>?)
          ?.map((e) => ShiftPaymentSummary.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$ShiftToJson(_Shift instance) => <String, dynamic>{
  'id': instance.id,
  'store_id': instance.storeId,
  'terminal_id': instance.terminalId,
  'employee_id': instance.employeeId,
  'status': instance.status,
  'opening_cash': instance.openingCash,
  'closing_cash': instance.closingCash,
  'expected_cash': instance.expectedCash,
  'cash_variance': instance.cashVariance,
  'total_sales': instance.totalSales,
  'total_orders': instance.totalOrders,
  'notes': instance.notes,
  'started_at': instance.startedAt?.toIso8601String(),
  'ended_at': instance.endedAt?.toIso8601String(),
  'payment_summaries': instance.paymentSummaries,
};

_ShiftPaymentSummary _$ShiftPaymentSummaryFromJson(Map<String, dynamic> json) =>
    _ShiftPaymentSummary(
      id: json['id'] as String,
      shiftId: json['shift_id'] as String,
      paymentMethod: json['payment_method'] as String,
      expectedAmount: (json['expected_amount'] as num?)?.toDouble() ?? 0,
      actualAmount: (json['actual_amount'] as num?)?.toDouble() ?? 0,
      variance: (json['variance'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$ShiftPaymentSummaryToJson(
  _ShiftPaymentSummary instance,
) => <String, dynamic>{
  'id': instance.id,
  'shift_id': instance.shiftId,
  'payment_method': instance.paymentMethod,
  'expected_amount': instance.expectedAmount,
  'actual_amount': instance.actualAmount,
  'variance': instance.variance,
};

_ShiftOpen _$ShiftOpenFromJson(Map<String, dynamic> json) => _ShiftOpen(
  storeId: json['store_id'] as String,
  terminalId: json['terminal_id'] as String?,
  employeeId: json['employee_id'] as String,
  openingCash: (json['opening_cash'] as num?)?.toDouble() ?? 0,
  notes: json['notes'] as String?,
);

Map<String, dynamic> _$ShiftOpenToJson(_ShiftOpen instance) =>
    <String, dynamic>{
      'store_id': instance.storeId,
      'terminal_id': instance.terminalId,
      'employee_id': instance.employeeId,
      'opening_cash': instance.openingCash,
      'notes': instance.notes,
    };

_ShiftClose _$ShiftCloseFromJson(Map<String, dynamic> json) => _ShiftClose(
  closingCash: (json['closing_cash'] as num).toDouble(),
  notes: json['notes'] as String?,
  paymentSummaries: (json['payment_summaries'] as List<dynamic>?)
      ?.map(
        (e) => ShiftPaymentSummaryCreate.fromJson(e as Map<String, dynamic>),
      )
      .toList(),
);

Map<String, dynamic> _$ShiftCloseToJson(_ShiftClose instance) =>
    <String, dynamic>{
      'closing_cash': instance.closingCash,
      'notes': instance.notes,
      'payment_summaries': instance.paymentSummaries,
    };

_ShiftPaymentSummaryCreate _$ShiftPaymentSummaryCreateFromJson(
  Map<String, dynamic> json,
) => _ShiftPaymentSummaryCreate(
  paymentMethod: json['payment_method'] as String,
  expectedAmount: (json['expected_amount'] as num?)?.toDouble() ?? 0,
  actualAmount: (json['actual_amount'] as num?)?.toDouble() ?? 0,
);

Map<String, dynamic> _$ShiftPaymentSummaryCreateToJson(
  _ShiftPaymentSummaryCreate instance,
) => <String, dynamic>{
  'payment_method': instance.paymentMethod,
  'expected_amount': instance.expectedAmount,
  'actual_amount': instance.actualAmount,
};
