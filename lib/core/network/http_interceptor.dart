import 'dart:async';
import 'dart:developer';

import 'package:http_interceptor/http_interceptor.dart';

import '../../init_dependencies.dart';
import '../database/app_database.dart';

/// Called when the server returns a 401 so the app can clear Riverpod state.
/// Set this once during [initDependencies] before any network calls are made.
typedef OnUnauthorizedCallback = Future<void> Function();

class HttpRequestInterceptor implements InterceptorContract {
  /// Register a callback here (e.g. in initDependencies) to handle logout
  /// when a 401 is received. Typically clears [currentUserIdProvider].
  static OnUnauthorizedCallback? onUnauthorized;

  @override
  FutureOr<BaseRequest> interceptRequest({required BaseRequest request}) async {
    final db = serviceLocator<AppDatabase>();
    final token = await db.getLoggedInUserToken();

    if (token != null && token.isNotEmpty) {
      log('Interceptor: attaching Bearer token → ${request.url}');
      request.headers['Authorization'] = 'Bearer $token';
    }

    return request;
  }

  @override
  FutureOr<BaseResponse> interceptResponse({
    required BaseResponse response,
  }) async {
    if (response.statusCode == 401) {
      log('Interceptor: 401 received — clearing session');
      try {
        final db = serviceLocator<AppDatabase>();
        final user = await db.getLoggedInUser();
        if (user != null) {
          await db.logoutUser(user.id);
        }
        await onUnauthorized?.call();
      } catch (e) {
        log('Interceptor: error during 401 logout — $e');
      }
    }
    return response;
  }

  @override
  FutureOr<bool> shouldInterceptRequest() => true;

  @override
  FutureOr<bool> shouldInterceptResponse() => true;
}
