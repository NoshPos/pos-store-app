// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shift_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ShiftList)
final shiftListProvider = ShiftListProvider._();

final class ShiftListProvider
    extends $AsyncNotifierProvider<ShiftList, List<Shift>> {
  ShiftListProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'shiftListProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$shiftListHash();

  @$internal
  @override
  ShiftList create() => ShiftList();
}

String _$shiftListHash() => r'96c54302fd79a68599d93d59112a604258627e0b';

abstract class _$ShiftList extends $AsyncNotifier<List<Shift>> {
  FutureOr<List<Shift>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<List<Shift>>, List<Shift>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<Shift>>, List<Shift>>,
              AsyncValue<List<Shift>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(ShiftDetail)
final shiftDetailProvider = ShiftDetailProvider._();

final class ShiftDetailProvider
    extends $NotifierProvider<ShiftDetail, AsyncValue<Shift?>> {
  ShiftDetailProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'shiftDetailProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$shiftDetailHash();

  @$internal
  @override
  ShiftDetail create() => ShiftDetail();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AsyncValue<Shift?> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AsyncValue<Shift?>>(value),
    );
  }
}

String _$shiftDetailHash() => r'771a426b34a654a2146b69794767ed0cd383fac6';

abstract class _$ShiftDetail extends $Notifier<AsyncValue<Shift?>> {
  AsyncValue<Shift?> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<Shift?>, AsyncValue<Shift?>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<Shift?>, AsyncValue<Shift?>>,
              AsyncValue<Shift?>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(OpenShiftAction)
final openShiftActionProvider = OpenShiftActionProvider._();

final class OpenShiftActionProvider
    extends $NotifierProvider<OpenShiftAction, AsyncValue<void>> {
  OpenShiftActionProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'openShiftActionProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$openShiftActionHash();

  @$internal
  @override
  OpenShiftAction create() => OpenShiftAction();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AsyncValue<void> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AsyncValue<void>>(value),
    );
  }
}

String _$openShiftActionHash() => r'91da49ff9aaf907a8ff2c45d19da00a6d4a71a65';

abstract class _$OpenShiftAction extends $Notifier<AsyncValue<void>> {
  AsyncValue<void> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<void>, AsyncValue<void>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<void>, AsyncValue<void>>,
              AsyncValue<void>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(CloseShiftAction)
final closeShiftActionProvider = CloseShiftActionProvider._();

final class CloseShiftActionProvider
    extends $NotifierProvider<CloseShiftAction, AsyncValue<void>> {
  CloseShiftActionProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'closeShiftActionProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$closeShiftActionHash();

  @$internal
  @override
  CloseShiftAction create() => CloseShiftAction();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AsyncValue<void> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AsyncValue<void>>(value),
    );
  }
}

String _$closeShiftActionHash() => r'8a8264d1bd6a4ec897e315ee1f40adf62be4df28';

abstract class _$CloseShiftAction extends $Notifier<AsyncValue<void>> {
  AsyncValue<void> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<void>, AsyncValue<void>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<void>, AsyncValue<void>>,
              AsyncValue<void>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
