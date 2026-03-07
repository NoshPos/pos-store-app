import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../init_dependencies.dart';
import '../database/app_database.dart';
import '../model/user_preferences_model.dart';

part 'user_preferences_provider.g.dart';

/// Provides the current [UserPreferencesModel] from the database.
@Riverpod(keepAlive: true)
class UserPreferences extends _$UserPreferences {
  @override
  Future<UserPreferencesModel> build() async {
    final db = serviceLocator<AppDatabase>();
    final settings = await db.getSettings();
    return UserPreferencesModel.fromDrift(settings);
  }

  AppDatabase get _db => serviceLocator<AppDatabase>();

  /// Update dark mode setting
  Future<void> setDarkMode(bool value) async {
    await _db.updateIsDarkMode(value);
    ref.invalidateSelf();
  }

  /// Update app lock setting
  Future<void> setAppLockEnabled(bool value) async {
    await _db.updateIsAppLockEnabled(value);
    ref.invalidateSelf();
  }

  /// Update screenshot blocking setting
  Future<void> setScreenshotBlocked(bool value) async {
    await _db.updateIsScreenshotBlocked(value);
    ref.invalidateSelf();
  }

  /// Update server endpoint
  Future<void> setServerEndpoint(String endpoint) async {
    await _db.updateServerEndpoint(endpoint);
    ref.invalidateSelf();
  }

  /// Update locale setting
  Future<void> setLocale(String locale) async {
    await _db.updateLocale(locale);
    ref.invalidateSelf();
  }
}
