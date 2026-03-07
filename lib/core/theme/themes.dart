import 'package:flutter/material.dart';

// Orange-based POS theme — matches the warm accent color in the UI design
const Color _kSeedColor = Color(0xFFE85D04);

ThemeData getThemeData({required bool isDarkMode}) {
  return ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: _kSeedColor,
      dynamicSchemeVariant: DynamicSchemeVariant.fidelity,
      brightness: isDarkMode ? Brightness.dark : Brightness.light,
    ),
  );
}

final ThemeData lightTheme = getThemeData(isDarkMode: false);

final ThemeData darkTheme = getThemeData(isDarkMode: true);
