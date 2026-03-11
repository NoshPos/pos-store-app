import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../init_dependencies.dart';
import '../database/app_database.dart';

part 'theme_provider.g.dart';

/// Provides isDarkMode state from database
@Riverpod(keepAlive: true)
class IsDarkMode extends _$IsDarkMode {
  @override
  bool build() {
    // Kick off the async load; when it completes it will update state.
    _loadFromDb();
    return false; // default to light until DB read finishes
  }

  Future<void> _loadFromDb() async {
    final db = serviceLocator<AppDatabase>();
    final settings = await db.getSettings();
    if (state != settings.isDarkMode) {
      state = settings.isDarkMode;
    }
  }

  Future<void> toggle() async {
    final newValue = !state;
    state = newValue; // immediate UI update
    final db = serviceLocator<AppDatabase>();
    await db.updateIsDarkMode(newValue);
  }
}

/// Provides the current ThemeMode based on isDarkMode setting
@Riverpod(keepAlive: true)
class AppThemeMode extends _$AppThemeMode {
  @override
  ThemeMode build() {
    final isDark = ref.watch(isDarkModeProvider);
    return isDark ? ThemeMode.dark : ThemeMode.light;
  }
}
