// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employee_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(EmployeeList)
final employeeListProvider = EmployeeListProvider._();

final class EmployeeListProvider
    extends $AsyncNotifierProvider<EmployeeList, List<Employee>> {
  EmployeeListProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'employeeListProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$employeeListHash();

  @$internal
  @override
  EmployeeList create() => EmployeeList();
}

String _$employeeListHash() => r'04c1fd3802cff72d14c083512362e458711bf384';

abstract class _$EmployeeList extends $AsyncNotifier<List<Employee>> {
  FutureOr<List<Employee>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<List<Employee>>, List<Employee>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<Employee>>, List<Employee>>,
              AsyncValue<List<Employee>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(CreateEmployeeAction)
final createEmployeeActionProvider = CreateEmployeeActionProvider._();

final class CreateEmployeeActionProvider
    extends $NotifierProvider<CreateEmployeeAction, AsyncValue<void>> {
  CreateEmployeeActionProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'createEmployeeActionProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$createEmployeeActionHash();

  @$internal
  @override
  CreateEmployeeAction create() => CreateEmployeeAction();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AsyncValue<void> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AsyncValue<void>>(value),
    );
  }
}

String _$createEmployeeActionHash() =>
    r'99aff6cfee5257ae7c79278edd551f9ecf67d680';

abstract class _$CreateEmployeeAction extends $Notifier<AsyncValue<void>> {
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

@ProviderFor(UpdateEmployeeAction)
final updateEmployeeActionProvider = UpdateEmployeeActionProvider._();

final class UpdateEmployeeActionProvider
    extends $NotifierProvider<UpdateEmployeeAction, AsyncValue<void>> {
  UpdateEmployeeActionProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'updateEmployeeActionProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$updateEmployeeActionHash();

  @$internal
  @override
  UpdateEmployeeAction create() => UpdateEmployeeAction();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AsyncValue<void> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AsyncValue<void>>(value),
    );
  }
}

String _$updateEmployeeActionHash() =>
    r'ae682012838d600907ccd55899351c69b5fede12';

abstract class _$UpdateEmployeeAction extends $Notifier<AsyncValue<void>> {
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

@ProviderFor(ToggleEmployeeStatusAction)
final toggleEmployeeStatusActionProvider =
    ToggleEmployeeStatusActionProvider._();

final class ToggleEmployeeStatusActionProvider
    extends $NotifierProvider<ToggleEmployeeStatusAction, AsyncValue<void>> {
  ToggleEmployeeStatusActionProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'toggleEmployeeStatusActionProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$toggleEmployeeStatusActionHash();

  @$internal
  @override
  ToggleEmployeeStatusAction create() => ToggleEmployeeStatusAction();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AsyncValue<void> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AsyncValue<void>>(value),
    );
  }
}

String _$toggleEmployeeStatusActionHash() =>
    r'7c85cc569a9065666aff872e22e394c9d4004c0c';

abstract class _$ToggleEmployeeStatusAction
    extends $Notifier<AsyncValue<void>> {
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
