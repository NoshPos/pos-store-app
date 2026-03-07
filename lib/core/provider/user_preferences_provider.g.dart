// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_preferences_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Provides the current [UserPreferencesModel] from the database.

@ProviderFor(UserPreferences)
final userPreferencesProvider = UserPreferencesProvider._();

/// Provides the current [UserPreferencesModel] from the database.
final class UserPreferencesProvider
    extends $AsyncNotifierProvider<UserPreferences, UserPreferencesModel> {
  /// Provides the current [UserPreferencesModel] from the database.
  UserPreferencesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'userPreferencesProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$userPreferencesHash();

  @$internal
  @override
  UserPreferences create() => UserPreferences();
}

String _$userPreferencesHash() => r'b2ad2f14e130771cb508f5742d0536985347ebc3';

/// Provides the current [UserPreferencesModel] from the database.

abstract class _$UserPreferences extends $AsyncNotifier<UserPreferencesModel> {
  FutureOr<UserPreferencesModel> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref
            as $Ref<AsyncValue<UserPreferencesModel>, UserPreferencesModel>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<UserPreferencesModel>,
                UserPreferencesModel
              >,
              AsyncValue<UserPreferencesModel>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
