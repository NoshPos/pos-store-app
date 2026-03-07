// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theme_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Provides isDarkMode state from database

@ProviderFor(IsDarkMode)
final isDarkModeProvider = IsDarkModeProvider._();

/// Provides isDarkMode state from database
final class IsDarkModeProvider
    extends $AsyncNotifierProvider<IsDarkMode, bool> {
  /// Provides isDarkMode state from database
  IsDarkModeProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'isDarkModeProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$isDarkModeHash();

  @$internal
  @override
  IsDarkMode create() => IsDarkMode();
}

String _$isDarkModeHash() => r'0376d23d80e4ab2e6a7b6b931ccef06407ac25e9';

/// Provides isDarkMode state from database

abstract class _$IsDarkMode extends $AsyncNotifier<bool> {
  FutureOr<bool> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<bool>, bool>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<bool>, bool>,
              AsyncValue<bool>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

/// Provides the current theme based on isDarkMode setting

@ProviderFor(AppTheme)
final appThemeProvider = AppThemeProvider._();

/// Provides the current theme based on isDarkMode setting
final class AppThemeProvider extends $NotifierProvider<AppTheme, ThemeData> {
  /// Provides the current theme based on isDarkMode setting
  AppThemeProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'appThemeProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$appThemeHash();

  @$internal
  @override
  AppTheme create() => AppTheme();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ThemeData value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ThemeData>(value),
    );
  }
}

String _$appThemeHash() => r'1bfaa31657332ae50d466c31ca94de592adcb8cb';

/// Provides the current theme based on isDarkMode setting

abstract class _$AppTheme extends $Notifier<ThemeData> {
  ThemeData build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<ThemeData, ThemeData>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<ThemeData, ThemeData>,
              ThemeData,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
