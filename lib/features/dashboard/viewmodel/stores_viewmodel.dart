import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../home/model/store.dart';
import '../model/store_models.dart';
import '../repository/dashboard_store_repository.dart';

part 'stores_viewmodel.g.dart';

// ---------------------------------------------------------------------------
// Dashboard Store List
// ---------------------------------------------------------------------------

@riverpod
class DashboardStoreList extends _$DashboardStoreList {
  @override
  Future<List<Store>> build() async {
    final repo = ref.read(dashboardStoreRepositoryProvider);
    final result = await repo.getStores();
    return result.fold(
      (failure) => throw Exception(failure.message),
      (stores) => stores,
    );
  }

  Future<void> refresh() async {
    ref.invalidateSelf();
  }
}

// ---------------------------------------------------------------------------
// Create Store
// ---------------------------------------------------------------------------

@riverpod
class CreateStoreAction extends _$CreateStoreAction {
  @override
  AsyncValue<void> build() => const AsyncData(null);

  Future<bool> createStore(StoreCreate store) async {
    state = const AsyncLoading();
    final repo = ref.read(dashboardStoreRepositoryProvider);
    final result = await repo.createStore(store);
    return result.fold(
      (failure) {
        state = AsyncError(failure.message, StackTrace.current);
        return false;
      },
      (_) {
        state = const AsyncData(null);
        ref.invalidate(dashboardStoreListProvider);
        return true;
      },
    );
  }
}

// ---------------------------------------------------------------------------
// Update Store
// ---------------------------------------------------------------------------

@riverpod
class UpdateStoreAction extends _$UpdateStoreAction {
  @override
  AsyncValue<void> build() => const AsyncData(null);

  Future<bool> updateStore(String storeId, StoreUpdate update) async {
    state = const AsyncLoading();
    final repo = ref.read(dashboardStoreRepositoryProvider);
    final result = await repo.updateStore(storeId, update);
    return result.fold(
      (failure) {
        state = AsyncError(failure.message, StackTrace.current);
        return false;
      },
      (_) {
        state = const AsyncData(null);
        ref.invalidate(dashboardStoreListProvider);
        return true;
      },
    );
  }
}

// ---------------------------------------------------------------------------
// Fetch Store Tables
// ---------------------------------------------------------------------------

@riverpod
class FetchStoreTablesAction extends _$FetchStoreTablesAction {
  @override
  AsyncValue<List<String>> build() => const AsyncData([]);

  Future<void> fetchTables(String storeId) async {
    state = const AsyncLoading();
    final repo = ref.read(dashboardStoreRepositoryProvider);
    final result = await repo.getStoreTables(storeId);
    result.fold(
      (failure) {
        state = AsyncError(failure.message, StackTrace.current);
      },
      (tables) {
        state = AsyncData(tables);
      },
    );
  }
}
