import 'package:freezed_annotation/freezed_annotation.dart';

part 'store_models.freezed.dart';
part 'store_models.g.dart';

// ---------------------------------------------------------------------------
// Store Create
// ---------------------------------------------------------------------------

@freezed
abstract class StoreCreate with _$StoreCreate {
  const factory StoreCreate({
    required String name,
    @JsonKey(name: 'location') String? address,
    String? city,
    String? phone,
    @JsonKey(name: 'table_count') @Default(0) int numTables,
  }) = _StoreCreate;

  factory StoreCreate.fromJson(Map<String, dynamic> json) =>
      _$StoreCreateFromJson(json);
}

// ---------------------------------------------------------------------------
// Store Update
// ---------------------------------------------------------------------------

@freezed
abstract class StoreUpdate with _$StoreUpdate {
  const factory StoreUpdate({
    String? name,
    @JsonKey(name: 'location') String? address,
    String? city,
    String? phone,
    @JsonKey(name: 'table_count') int? numTables,
  }) = _StoreUpdate;

  factory StoreUpdate.fromJson(Map<String, dynamic> json) =>
      _$StoreUpdateFromJson(json);
}

// ---------------------------------------------------------------------------
// Tables Response
// ---------------------------------------------------------------------------

@freezed
abstract class TablesResponse with _$TablesResponse {
  const factory TablesResponse({@Default([]) List<String> tables}) =
      _TablesResponse;

  factory TablesResponse.fromJson(Map<String, dynamic> json) =>
      _$TablesResponseFromJson(json);
}
