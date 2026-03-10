import 'dart:convert';
import 'dart:io';

import 'package:fpdart/fpdart.dart';
import 'package:http/http.dart' as http;
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/constants/server_constants.dart';
import '../../../core/error/failure.dart';
import '../../../core/network/connection_checker.dart';
import '../../../init_dependencies.dart';
import '../model/kot.dart';

part 'kot_repository.g.dart';

@riverpod
KotRepository kotRepository(Ref ref) {
  return KotRepository(
    client: serviceLocator<http.Client>(),
    connectionChecker: serviceLocator<ConnectionChecker>(),
  );
}

class KotRepository {
  final http.Client client;
  final ConnectionChecker connectionChecker;

  KotRepository({required this.client, required this.connectionChecker});

  Uri _buildUri(String endpoint, [Map<String, String>? queryParams]) {
    final base = ServerConstants.baseUrl;
    final uri = Uri.parse('$base/$endpoint');
    if (queryParams != null) {
      return uri.replace(queryParameters: queryParams);
    }
    return uri;
  }

  /// Fetch all kitchen order tickets for a store.
  Future<Either<Failure, List<KitchenOrderTicket>>> getKitchenOrders({
    required String storeId,
  }) async {
    try {
      if (!await connectionChecker.isConnected) {
        return const Left(Failure('No internet connection.'));
      }

      final uri = _buildUri(ApiEndpoints.kitchenOrders, {'store_id': storeId});
      final response = await client.get(uri);

      if (response.statusCode != 200) {
        final message = parsePydanticError(response.body);
        return Left(Failure(message, response.statusCode));
      }

      final List<dynamic> data = jsonDecode(response.body) as List<dynamic>;
      final tickets = data
          .map((e) => KitchenOrderTicket.fromJson(e as Map<String, dynamic>))
          .toList();
      return Right(tickets);
    } on SocketException {
      return const Left(Failure('No internet connection.'));
    } catch (e) {
      return Left(Failure('Failed to fetch kitchen orders: $e'));
    }
  }

  /// Update KOT status (PENDING → PREPARING → READY).
  Future<Either<Failure, KitchenOrderTicket>> updateKotStatus({
    required String kotId,
    required String status,
  }) async {
    try {
      if (!await connectionChecker.isConnected) {
        return const Left(Failure('No internet connection.'));
      }

      final uri = _buildUri(ApiEndpoints.kitchenKotStatus(kotId));
      final response = await client.put(
        uri,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({'status': status}),
      );

      if (response.statusCode != 200) {
        final message = parsePydanticError(response.body);
        return Left(Failure(message, response.statusCode));
      }

      final ticket = KitchenOrderTicket.fromJson(
        jsonDecode(response.body) as Map<String, dynamic>,
      );
      return Right(ticket);
    } on SocketException {
      return const Left(Failure('No internet connection.'));
    } catch (e) {
      return Left(Failure('Failed to update KOT status: $e'));
    }
  }
}
