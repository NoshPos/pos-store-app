import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:drift/drift.dart' show Value;

import '../../init_dependencies.dart';
import '../database/app_database.dart';

part 'current_user_provider.g.dart';

/// Provider for current user ID (nullable if not logged in)
@Riverpod(keepAlive: true)
class CurrentUserId extends _$CurrentUserId {
  @override
  String? build() {
    // Initialize by checking database for logged in user
    _initializeUser();
    return null;
  }

  Future<void> _initializeUser() async {
    final database = serviceLocator<AppDatabase>();
    final user = await database.getLoggedInUser();
    if (user != null && ref.mounted) {
      state = user.id;
    }
  }

  /// Set current user ID after login
  Future<void> setUser(String userId) async {
    final database = serviceLocator<AppDatabase>();
    await database.insertUser(
      UsersCompanion(id: Value(userId), isLoggedIn: const Value(true)),
    );
    state = userId;
  }

  /// Clear current user (logout)
  Future<void> clearUser() async {
    if (state != null) {
      final database = serviceLocator<AppDatabase>();
      await database.logoutUser(state!);
    }
    state = null;
  }

  /// Check if user is logged in
  bool get isLoggedIn => state != null;
}

/// Provider for checking if user is logged in
@riverpod
bool isUserLoggedIn(Ref ref) {
  return ref.watch(currentUserIdProvider) != null;
}

/// Provider for getting stored user ID
@riverpod
Future<String?> storedUserId(Ref ref) async {
  final database = serviceLocator<AppDatabase>();
  final user = await database.getLoggedInUser();
  return user?.id;
}
