import 'dart:convert';
import 'dart:io';

import 'package:fpdart/fpdart.dart';
import 'package:http/http.dart' as http;
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/constants/server_constants.dart';
import '../../../core/error/failure.dart';
import '../../../core/network/connection_checker.dart';
import '../../../init_dependencies.dart';
import '../../home/model/store.dart';
import '../model/store_models.dart';

part 'dashboard_store_repository.g.dart';

@riverpod
DashboardStoreRepository dashboardStoreRepository(Ref ref) {
  return DashboardStoreRepository(
    client: serviceLocator<http.Client>(),
    connectionChecker: serviceLocator<ConnectionChecker>(),
  );
}

class DashboardStoreRepository {
  final http.Client client;
  final ConnectionChecker connectionChecker;

  DashboardStoreRepository({
    required this.client,
    required this.connectionChecker,
  });

  Uri _buildUri(String endpoint, [Map<String, String>? queryParams]) {
    final base = ServerConstants.baseUrl;
    final uri = Uri.parse('$base/$endpoint');
    if (queryParams != null) {
      return uri.replace(queryParameters: queryParams);
    }
    return uri;
  }

  // ─── List stores ──────────────────────────────────────────────────────
  Future<Either<Failure, List<Store>>> getStores() async {
    try {
      if (!await connectionChecker.isConnected) {
        return const Left(Failure('No internet connection.'));
      }

      final uri = _buildUri(ApiEndpoints.stores);
      final response = await client.get(uri);

      if (response.statusCode != 200) {
        final message = parsePydanticError(response.body);
        return Left(Failure(message, response.statusCode));
      }

      final List<dynamic> data = jsonDecode(response.body) as List<dynamic>;
      final stores = data
          .map((e) => Store.fromJson(e as Map<String, dynamic>))
          .toList();
      return Right(stores);
    } on SocketException {
      return const Left(Failure('No internet connection.'));
    } catch (e) {
      return Left(Failure('Failed to fetch stores: $e'));
    }
  }

  // ─── Get single store ─────────────────────────────────────────────────
  Future<Either<Failure, Store>> getStore(String storeId) async {
    try {
      if (!await connectionChecker.isConnected) {
        return const Left(Failure('No internet connection.'));
      }

      final uri = _buildUri(ApiEndpoints.storeById(storeId));
      final response = await client.get(uri);

      if (response.statusCode != 200) {
        final message = parsePydanticError(response.body);
        return Left(Failure(message, response.statusCode));
      }

      final store = Store.fromJson(
        jsonDecode(response.body) as Map<String, dynamic>,
      );
      return Right(store);
    } on SocketException {
      return const Left(Failure('No internet connection.'));
    } catch (e) {
      return Left(Failure('Failed to fetch store: $e'));
    }
  }

  // ─── Create store ─────────────────────────────────────────────────────
  Future<Either<Failure, Store>> createStore(StoreCreate store) async {
    try {
      if (!await connectionChecker.isConnected) {
        return const Left(Failure('No internet connection.'));
      }

      final uri = _buildUri(ApiEndpoints.stores);
      final response = await client.post(
        uri,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(store.toJson()),
      );

      if (response.statusCode != 200 && response.statusCode != 201) {
        final message = parsePydanticError(response.body);
        return Left(Failure(message, response.statusCode));
      }

      final created = Store.fromJson(
        jsonDecode(response.body) as Map<String, dynamic>,
      );
      return Right(created);
    } on SocketException {
      return const Left(Failure('No internet connection.'));
    } catch (e) {
      return Left(Failure('Failed to create store: $e'));
    }
  }

  // ─── Update store ─────────────────────────────────────────────────────
  Future<Either<Failure, Store>> updateStore(
    String storeId,
    StoreUpdate update,
  ) async {
    try {
      if (!await connectionChecker.isConnected) {
        return const Left(Failure('No internet connection.'));
      }

      final uri = _buildUri(ApiEndpoints.storeById(storeId));
      final response = await client.put(
        uri,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(update.toJson()),
      );

      if (response.statusCode != 200) {
        final message = parsePydanticError(response.body);
        return Left(Failure(message, response.statusCode));
      }

      final updated = Store.fromJson(
        jsonDecode(response.body) as Map<String, dynamic>,
      );
      return Right(updated);
    } on SocketException {
      return const Left(Failure('No internet connection.'));
    } catch (e) {
      return Left(Failure('Failed to update store: $e'));
    }
  }

  // ─── Get tables for store ─────────────────────────────────────────────
  Future<Either<Failure, List<String>>> getStoreTables(String storeId) async {
    try {
      if (!await connectionChecker.isConnected) {
        return const Left(Failure('No internet connection.'));
      }

      final uri = _buildUri(ApiEndpoints.storeTables(storeId));
      final response = await client.get(uri);

      if (response.statusCode != 200) {
        final message = parsePydanticError(response.body);
        return Left(Failure(message, response.statusCode));
      }

      final data = jsonDecode(response.body) as Map<String, dynamic>;
      final tables = TablesResponse.fromJson(data);
      return Right(tables.tables);
    } on SocketException {
      return const Left(Failure('No internet connection.'));
    } catch (e) {
      return Left(Failure('Failed to fetch tables: $e'));
    }
  }
}
