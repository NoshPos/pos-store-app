import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../home/viewmodel/store_viewmodel.dart';
import '../model/shift_models.dart';
import '../repository/dashboard_shift_repository.dart';

part 'shift_viewmodel.g.dart';

// ---------------------------------------------------------------------------
// Shift List
// ---------------------------------------------------------------------------

@riverpod
class ShiftList extends _$ShiftList {
  @override
  Future<List<Shift>> build() async {
    final store = ref.watch(selectedStoreProvider);
    if (store == null) return [];
    final repo = ref.read(dashboardShiftRepositoryProvider);
    final result = await repo.getShifts(storeId: store.id);
    return result.fold(
      (failure) => throw Exception(failure.message),
      (shifts) => shifts,
    );
  }

  Future<void> refresh() async {
    ref.invalidateSelf();
  }
}

// ---------------------------------------------------------------------------
// Get Shift Detail
// ---------------------------------------------------------------------------

@riverpod
class ShiftDetail extends _$ShiftDetail {
  @override
  AsyncValue<Shift?> build() => const AsyncData(null);

  Future<void> loadShift(String shiftId) async {
    state = const AsyncLoading();
    final repo = ref.read(dashboardShiftRepositoryProvider);
    final result = await repo.getShift(shiftId: shiftId);
    result.fold(
      (failure) => state = AsyncError(failure.message, StackTrace.current),
      (shift) => state = AsyncData(shift),
    );
  }
}

// ---------------------------------------------------------------------------
// Open Shift
// ---------------------------------------------------------------------------

@riverpod
class OpenShiftAction extends _$OpenShiftAction {
  @override
  AsyncValue<void> build() => const AsyncData(null);

  Future<bool> openShift(ShiftOpen shiftOpen) async {
    state = const AsyncLoading();
    final repo = ref.read(dashboardShiftRepositoryProvider);
    final result = await repo.openShift(shiftOpen);
    return result.fold(
      (failure) {
        state = AsyncError(failure.message, StackTrace.current);
        return false;
      },
      (_) {
        state = const AsyncData(null);
        ref.invalidate(shiftListProvider);
        return true;
      },
    );
  }
}

// ---------------------------------------------------------------------------
// Close Shift
// ---------------------------------------------------------------------------

@riverpod
class CloseShiftAction extends _$CloseShiftAction {
  @override
  AsyncValue<void> build() => const AsyncData(null);

  Future<bool> closeShift({
    required String shiftId,
    required ShiftClose shiftClose,
  }) async {
    state = const AsyncLoading();
    final repo = ref.read(dashboardShiftRepositoryProvider);
    final result = await repo.closeShift(
      shiftId: shiftId,
      shiftClose: shiftClose,
    );
    return result.fold(
      (failure) {
        state = AsyncError(failure.message, StackTrace.current);
        return false;
      },
      (_) {
        state = const AsyncData(null);
        ref.invalidate(shiftListProvider);
        return true;
      },
    );
  }
}
