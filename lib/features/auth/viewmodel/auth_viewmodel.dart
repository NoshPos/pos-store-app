import 'dart:developer';

import 'package:drift/drift.dart' hide Column;
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/database/app_database.dart' hide User;
import '../../../core/model/user.dart';
import '../../../core/provider/current_user_provider.dart';
import '../../../init_dependencies.dart';
import '../repository/auth_repository.dart';

part 'auth_viewmodel.g.dart';

@riverpod
class AuthViewModel extends _$AuthViewModel {
  @override
  AsyncValue<User>? build() {
    return null;
  }

  /// Login with email and password.
  Future<void> login({required String email, required String password}) async {
    state = const AsyncValue.loading();

    final result = await ref
        .read(authRepositoryProvider)
        .login(email: email, password: password);

    if (!ref.mounted) return;

    result.fold(
      (failure) {
        state = AsyncValue.error(failure.message, StackTrace.current);
      },
      (authResponse) async {
        final user = authResponse.user;

        // Persist user session to local DB
        final database = serviceLocator<AppDatabase>();
        await database.insertUser(
          UsersCompanion.insert(
            id: user.id,
            name: Value(user.name),
            email: Value(user.email),
            phone: Value(user.phone),
            token: Value(authResponse.accessToken),
            role: Value(user.role),
            isLoggedIn: const Value(true),
            isActive: Value(user.isActive),
          ),
        );
        log('AuthViewModel: user ${user.id} persisted to DB');

        ref.read(currentUserIdProvider.notifier).state = user.id;
        state = AsyncValue.data(user);
      },
    );
  }

  /// Logout.
  Future<void> logout() async {
    final database = serviceLocator<AppDatabase>();
    final dbUser = await database.getLoggedInUser();
    if (dbUser != null) {
      await database.logoutUser(dbUser.id);
      log('AuthViewModel: user ${dbUser.id} logged out');
    }

    if (!ref.mounted) return;

    await ref.read(currentUserIdProvider.notifier).clearUser();
    state = null;
  }
}
