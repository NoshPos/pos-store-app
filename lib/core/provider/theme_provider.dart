import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../init_dependencies.dart';
import '../database/app_database.dart';
import '../theme/themes.dart';

part 'theme_provider.g.dart';

/// Provides isDarkMode state from database
@Riverpod(keepAlive: true)
class IsDarkMode extends _$IsDarkMode {
  @override
  Future<bool> build() async {
    final db = serviceLocator<AppDatabase>();
    final settings = await db.getSettings();
    return settings.isDarkMode;
  }

  Future<void> setDarkMode(bool value) async {
    final db = serviceLocator<AppDatabase>();
    await db.updateIsDarkMode(value);
    ref.invalidateSelf();
  }
}

/// Provides the current theme based on isDarkMode setting
@Riverpod(keepAlive: true)
class AppTheme extends _$AppTheme {
  @override
  ThemeData build() {
    final isDarkModeAsync = ref.watch(isDarkModeProvider);

    return isDarkModeAsync.when(
      data: (isDark) => isDark ? darkTheme : lightTheme,
      loading: () => lightTheme,
      error: (_, _) => lightTheme,
    );
  }

  Future<void> toggleTheme(bool isDarkMode) async {
    await ref.read(isDarkModeProvider.notifier).setDarkMode(isDarkMode);
  }
}
