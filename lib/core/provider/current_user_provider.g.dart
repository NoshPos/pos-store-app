// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_user_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Provider for current user ID (nullable if not logged in)

@ProviderFor(CurrentUserId)
final currentUserIdProvider = CurrentUserIdProvider._();

/// Provider for current user ID (nullable if not logged in)
final class CurrentUserIdProvider
    extends $NotifierProvider<CurrentUserId, String?> {
  /// Provider for current user ID (nullable if not logged in)
  CurrentUserIdProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'currentUserIdProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$currentUserIdHash();

  @$internal
  @override
  CurrentUserId create() => CurrentUserId();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String?>(value),
    );
  }
}

String _$currentUserIdHash() => r'4953dcc7cb44818b035fca620488ef5f838bb552';

/// Provider for current user ID (nullable if not logged in)

abstract class _$CurrentUserId extends $Notifier<String?> {
  String? build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<String?, String?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<String?, String?>,
              String?,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

/// Provider for checking if user is logged in

@ProviderFor(isUserLoggedIn)
final isUserLoggedInProvider = IsUserLoggedInProvider._();

/// Provider for checking if user is logged in

final class IsUserLoggedInProvider extends $FunctionalProvider<bool, bool, bool>
    with $Provider<bool> {
  /// Provider for checking if user is logged in
  IsUserLoggedInProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'isUserLoggedInProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$isUserLoggedInHash();

  @$internal
  @override
  $ProviderElement<bool> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  bool create(Ref ref) {
    return isUserLoggedIn(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$isUserLoggedInHash() => r'8ae95e0f9cb73ab9cd9bfb7d5c31b3b143cd3c24';

/// Provider for getting stored user ID

@ProviderFor(storedUserId)
final storedUserIdProvider = StoredUserIdProvider._();

/// Provider for getting stored user ID

final class StoredUserIdProvider
    extends $FunctionalProvider<AsyncValue<String?>, String?, FutureOr<String?>>
    with $FutureModifier<String?>, $FutureProvider<String?> {
  /// Provider for getting stored user ID
  StoredUserIdProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'storedUserIdProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$storedUserIdHash();

  @$internal
  @override
  $FutureProviderElement<String?> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<String?> create(Ref ref) {
    return storedUserId(ref);
  }
}

String _$storedUserIdHash() => r'18001c131e9f896e0d629fc3de0051870dd26744';
