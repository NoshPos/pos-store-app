import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../home/viewmodel/store_viewmodel.dart';
import '../model/employee_models.dart';
import '../repository/dashboard_employee_repository.dart';

part 'employee_viewmodel.g.dart';

// ---------------------------------------------------------------------------
// Employee List
// ---------------------------------------------------------------------------

@riverpod
class EmployeeList extends _$EmployeeList {
  @override
  Future<List<Employee>> build() async {
    final store = ref.watch(selectedStoreProvider);
    if (store == null) return [];
    final repo = ref.read(dashboardEmployeeRepositoryProvider);
    final result = await repo.getEmployees(storeId: store.id);
    return result.fold(
      (failure) => throw Exception(failure.message),
      (employees) => employees,
    );
  }

  Future<void> refresh() async {
    ref.invalidateSelf();
  }
}

// ---------------------------------------------------------------------------
// Create Employee
// ---------------------------------------------------------------------------

@riverpod
class CreateEmployeeAction extends _$CreateEmployeeAction {
  @override
  AsyncValue<void> build() => const AsyncData(null);

  Future<bool> createEmployee(EmployeeCreate employee) async {
    state = const AsyncLoading();
    final repo = ref.read(dashboardEmployeeRepositoryProvider);
    final result = await repo.createEmployee(employee);
    return result.fold(
      (failure) {
        state = AsyncError(failure.message, StackTrace.current);
        return false;
      },
      (_) {
        state = const AsyncData(null);
        ref.invalidate(employeeListProvider);
        return true;
      },
    );
  }
}
