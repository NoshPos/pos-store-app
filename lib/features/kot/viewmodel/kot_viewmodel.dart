import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../home/viewmodel/store_viewmodel.dart';
import '../model/kot.dart';
import '../repository/kot_repository.dart';

part 'kot_viewmodel.g.dart';

// ---------------------------------------------------------------------------
// Kitchen orders list
// ---------------------------------------------------------------------------

@riverpod
class KitchenOrdersList extends _$KitchenOrdersList {
  @override
  Future<List<KitchenOrderTicket>> build() async {
    final store = ref.watch(selectedStoreProvider);
    if (store == null) return [];
    final repo = ref.read(kotRepositoryProvider);
    final result = await repo.getKitchenOrders(storeId: store.id);
    return result.fold(
      (failure) => throw Exception(failure.message),
      (tickets) => tickets,
    );
  }

  Future<void> refresh() async {
    ref.invalidateSelf();
  }
}

// ---------------------------------------------------------------------------
// KOT status filter
// ---------------------------------------------------------------------------

@riverpod
class KotStatusFilter extends _$KotStatusFilter {
  @override
  String? build() => null; // null = All

  void select(String? status) => state = status;
}

// ---------------------------------------------------------------------------
// KOT operations
// ---------------------------------------------------------------------------

@riverpod
class KotOperations extends _$KotOperations {
  @override
  AsyncValue<void> build() => const AsyncData(null);

  Future<bool> updateStatus(String kotId, String status) async {
    state = const AsyncLoading();
    final repo = ref.read(kotRepositoryProvider);
    final result = await repo.updateKotStatus(kotId: kotId, status: status);
    return result.fold(
      (failure) {
        state = AsyncError(failure.message, StackTrace.current);
        return false;
      },
      (_) {
        ref.invalidate(kitchenOrdersListProvider);
        state = const AsyncData(null);
        return true;
      },
    );
  }
}
