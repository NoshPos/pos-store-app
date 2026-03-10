import 'package:freezed_annotation/freezed_annotation.dart';

import 'table.dart';

part 'store.freezed.dart';
part 'store.g.dart';

@freezed
abstract class Store with _$Store {
  const factory Store({
    required String id,
    @JsonKey(name: 'owner_id') required String ownerId,
    required String name,
    @JsonKey(name: 'location') @Default('') String? address,
    @Default('') String? city,
    @Default('') String? phone,
    @Default('') String? email,
    @JsonKey(name: 'gst_number') String? gstNumber,
    @Default('INR') String currency,
    @Default('Asia/Kolkata') String timezone,
    @JsonKey(name: 'table_count') @Default(0) int numTables,
    @JsonKey(name: 'is_active') @Default(true) bool isActive,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @Default([]) List<DineInTable> tables,
  }) = _Store;

  factory Store.fromJson(Map<String, dynamic> json) => _$StoreFromJson(json);
}
