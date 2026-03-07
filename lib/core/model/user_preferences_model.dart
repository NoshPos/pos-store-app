import 'package:freezed_annotation/freezed_annotation.dart';

import '../database/app_database.dart';

part 'user_preferences_model.freezed.dart';
part 'user_preferences_model.g.dart';

/// Immutable model representing app-level user preferences.
///
/// Backed by the [AppSettings] table in Drift. Holds theme, security,
/// and server configuration — replacing the old SharedPreferences approach.
@freezed
abstract class UserPreferencesModel with _$UserPreferencesModel {
  const UserPreferencesModel._();

  const factory UserPreferencesModel({
    @Default(false) bool isDarkMode,
    DateTime? updatedAt,
  }) = _UserPreferencesModel;

  factory UserPreferencesModel.fromJson(Map<String, dynamic> json) =>
      _$UserPreferencesModelFromJson(json);

  /// Create from Drift database row
  factory UserPreferencesModel.fromDrift(AppSetting row) {
    return UserPreferencesModel(
      isDarkMode: row.isDarkMode,
      updatedAt: row.updatedAt,
    );
  }
}
