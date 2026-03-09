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

String _$employeeListHash() => r'9db688cb1696c8f22ce27b9aceeb419c9d36e299';

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
