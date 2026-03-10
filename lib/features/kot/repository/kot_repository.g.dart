// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kot_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(kotRepository)
final kotRepositoryProvider = KotRepositoryProvider._();

final class KotRepositoryProvider
    extends $FunctionalProvider<KotRepository, KotRepository, KotRepository>
    with $Provider<KotRepository> {
  KotRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'kotRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$kotRepositoryHash();

  @$internal
  @override
  $ProviderElement<KotRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  KotRepository create(Ref ref) {
    return kotRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(KotRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<KotRepository>(value),
    );
  }
}

String _$kotRepositoryHash() => r'1c4f561a0b2d88432e08d08a1d15043717e3082d';
