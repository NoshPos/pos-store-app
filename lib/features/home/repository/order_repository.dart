import 'dart:convert';
import 'dart:io';

import 'package:fpdart/fpdart.dart' hide Order;
import 'package:http/http.dart' as http;
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/constants/server_constants.dart';
import '../../../core/error/failure.dart';
import '../../../core/network/connection_checker.dart';
import '../../../init_dependencies.dart';
import '../model/order.dart';

part 'order_repository.g.dart';

@riverpod
OrderRepository orderRepository(Ref ref) {
  return OrderRepository(
    client: serviceLocator<http.Client>(),
    connectionChecker: serviceLocator<ConnectionChecker>(),
  );
}

class OrderRepository {
  final http.Client client;
  final ConnectionChecker connectionChecker;

  OrderRepository({required this.client, required this.connectionChecker});

  Uri _buildUri(String endpoint, [Map<String, String>? queryParams]) {
    final base = ServerConstants.baseUrl;
    final uri = Uri.parse('$base/$endpoint');
    if (queryParams != null) {
      return uri.replace(queryParameters: queryParams);
    }
    return uri;
  }

  Future<Either<Failure, List<Order>>> getOrders({
    required String storeId,
    String? status,
    String? orderType,
  }) async {
    try {
      if (!await connectionChecker.isConnected) {
        return const Left(Failure('No internet connection.'));
      }

      final params = <String, String>{'store_id': storeId};
      if (status != null) {
        params['status'] = status;
      }
      if (orderType != null) {
        params['order_type'] = orderType;
      }

      final uri = _buildUri(ApiEndpoints.orders, params);
      final response = await client.get(uri);

      if (response.statusCode != 200) {
        final message = parsePydanticError(response.body);
        return Left(Failure(message, response.statusCode));
      }

      final List<dynamic> data = jsonDecode(response.body) as List<dynamic>;
      final orders = data
          .map((e) => Order.fromJson(e as Map<String, dynamic>))
          .toList();
      return Right(orders);
    } on SocketException {
      return const Left(Failure('No internet connection.'));
    } catch (e) {
      return Left(Failure('Failed to fetch orders: $e'));
    }
  }

  Future<Either<Failure, Order>> createOrder(OrderCreate orderCreate) async {
    try {
      if (!await connectionChecker.isConnected) {
        return const Left(Failure('No internet connection.'));
      }

      final uri = _buildUri(ApiEndpoints.orders);
      final response = await client.post(
        uri,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(orderCreate.toJson()),
      );

      if (response.statusCode != 200 && response.statusCode != 201) {
        final message = parsePydanticError(response.body);
        return Left(Failure(message, response.statusCode));
      }

      final order = Order.fromJson(
        jsonDecode(response.body) as Map<String, dynamic>,
      );
      return Right(order);
    } on SocketException {
      return const Left(Failure('No internet connection.'));
    } catch (e) {
      return Left(Failure('Failed to create order: $e'));
    }
  }

  Future<Either<Failure, Order>> updateOrderStatus({
    required String orderId,
    required String status,
  }) async {
    try {
      if (!await connectionChecker.isConnected) {
        return const Left(Failure('No internet connection.'));
      }

      final uri = _buildUri(ApiEndpoints.orderStatus(orderId));
      final response = await client.put(
        uri,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({'status': status}),
      );

      if (response.statusCode != 200) {
        final message = parsePydanticError(response.body);
        return Left(Failure(message, response.statusCode));
      }

      final order = Order.fromJson(
        jsonDecode(response.body) as Map<String, dynamic>,
      );
      return Right(order);
    } on SocketException {
      return const Left(Failure('No internet connection.'));
    } catch (e) {
      return Left(Failure('Failed to update order status: $e'));
    }
  }

  Future<Either<Failure, Order>> getOrderById(String orderId) async {
    try {
      if (!await connectionChecker.isConnected) {
        return const Left(Failure('No internet connection.'));
      }

      final uri = _buildUri(ApiEndpoints.orderById(orderId));
      final response = await client.get(uri);

      if (response.statusCode != 200) {
        final message = parsePydanticError(response.body);
        return Left(Failure(message, response.statusCode));
      }

      final order = Order.fromJson(
        jsonDecode(response.body) as Map<String, dynamic>,
      );
      return Right(order);
    } on SocketException {
      return const Left(Failure('No internet connection.'));
    } catch (e) {
      return Left(Failure('Failed to fetch order: $e'));
    }
  }

  Future<Either<Failure, Order>> cancelOrder({
    required String orderId,
    required String reason,
  }) async {
    try {
      if (!await connectionChecker.isConnected) {
        return const Left(Failure('No internet connection.'));
      }

      final uri = _buildUri(ApiEndpoints.orderCancel(orderId));
      final response = await client.put(
        uri,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({'reason': reason}),
      );

      if (response.statusCode != 200) {
        final message = parsePydanticError(response.body);
        return Left(Failure(message, response.statusCode));
      }

      final order = Order.fromJson(
        jsonDecode(response.body) as Map<String, dynamic>,
      );
      return Right(order);
    } on SocketException {
      return const Left(Failure('No internet connection.'));
    } catch (e) {
      return Left(Failure('Failed to cancel order: $e'));
    }
  }

  Future<Either<Failure, void>> createPayment(PaymentCreate payment) async {
    try {
      if (!await connectionChecker.isConnected) {
        return const Left(Failure('No internet connection.'));
      }

      final uri = _buildUri(ApiEndpoints.orderPayments);
      final response = await client.post(
        uri,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(payment.toJson()),
      );

      if (response.statusCode != 200 && response.statusCode != 201) {
        final message = parsePydanticError(response.body);
        return Left(Failure(message, response.statusCode));
      }

      return const Right(null);
    } on SocketException {
      return const Left(Failure('No internet connection.'));
    } catch (e) {
      return Left(Failure('Failed to create payment: $e'));
    }
  }

  Future<Either<Failure, List<Map<String, dynamic>>>> getOrderPayments(
    String orderId,
  ) async {
    try {
      if (!await connectionChecker.isConnected) {
        return const Left(Failure('No internet connection.'));
      }

      final uri = _buildUri(ApiEndpoints.orderPaymentsByOrder(orderId));
      final response = await client.get(uri);

      if (response.statusCode != 200) {
        final message = parsePydanticError(response.body);
        return Left(Failure(message, response.statusCode));
      }

      final List<dynamic> data = jsonDecode(response.body) as List<dynamic>;
      return Right(
        data.map((e) => (e as Map<String, dynamic>)).toList(growable: false),
      );
    } on SocketException {
      return const Left(Failure('No internet connection.'));
    } catch (e) {
      return Left(Failure('Failed to fetch payments: $e'));
    }
  }

  Future<Either<Failure, Map<String, dynamic>>> updatePayment({
    required String paymentId,
    String? paymentMethod,
    double? amount,
    double? tipAmount,
    String? reference,
  }) async {
    try {
      if (!await connectionChecker.isConnected) {
        return const Left(Failure('No internet connection.'));
      }

      final body = <String, dynamic>{};
      if (paymentMethod != null) body['payment_method'] = paymentMethod;
      if (amount != null) body['amount'] = amount;
      if (tipAmount != null) body['tip_amount'] = tipAmount;
      if (reference != null) body['reference'] = reference;

      final uri = _buildUri(ApiEndpoints.orderPaymentById(paymentId));
      final response = await client.put(
        uri,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(body),
      );

      if (response.statusCode != 200) {
        final message = parsePydanticError(response.body);
        return Left(Failure(message, response.statusCode));
      }

      return Right(jsonDecode(response.body) as Map<String, dynamic>);
    } on SocketException {
      return const Left(Failure('No internet connection.'));
    } catch (e) {
      return Left(Failure('Failed to update payment: $e'));
    }
  }

  // -------------------------------------------------------------------
  // Order item CRUD
  // -------------------------------------------------------------------

  Future<Either<Failure, OrderItem>> addOrderItem({
    required String orderId,
    required OrderItemCreate item,
  }) async {
    try {
      if (!await connectionChecker.isConnected) {
        return const Left(Failure('No internet connection.'));
      }

      final uri = _buildUri(ApiEndpoints.orderItems(orderId));
      final response = await client.post(
        uri,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(item.toJson()),
      );

      if (response.statusCode != 200 && response.statusCode != 201) {
        final message = parsePydanticError(response.body);
        return Left(Failure(message, response.statusCode));
      }

      final orderItem = OrderItem.fromJson(
        jsonDecode(response.body) as Map<String, dynamic>,
      );
      return Right(orderItem);
    } on SocketException {
      return const Left(Failure('No internet connection.'));
    } catch (e) {
      return Left(Failure('Failed to add order item: $e'));
    }
  }

  Future<Either<Failure, OrderItem>> updateOrderItem({
    required String orderId,
    required String itemId,
    required int quantity,
    String? notes,
  }) async {
    try {
      if (!await connectionChecker.isConnected) {
        return const Left(Failure('No internet connection.'));
      }

      final uri = _buildUri(ApiEndpoints.orderItem(orderId, itemId));
      final body = <String, dynamic>{'quantity': quantity};
      if (notes != null) body['notes'] = notes;

      final response = await client.put(
        uri,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(body),
      );

      if (response.statusCode != 200) {
        final message = parsePydanticError(response.body);
        return Left(Failure(message, response.statusCode));
      }

      final orderItem = OrderItem.fromJson(
        jsonDecode(response.body) as Map<String, dynamic>,
      );
      return Right(orderItem);
    } on SocketException {
      return const Left(Failure('No internet connection.'));
    } catch (e) {
      return Left(Failure('Failed to update order item: $e'));
    }
  }

  Future<Either<Failure, void>> deleteOrderItem({
    required String orderId,
    required String itemId,
  }) async {
    try {
      if (!await connectionChecker.isConnected) {
        return const Left(Failure('No internet connection.'));
      }

      final uri = _buildUri(ApiEndpoints.orderItem(orderId, itemId));
      final response = await client.delete(uri);

      if (response.statusCode != 200 && response.statusCode != 204) {
        final message = parsePydanticError(response.body);
        return Left(Failure(message, response.statusCode));
      }

      return const Right(null);
    } on SocketException {
      return const Left(Failure('No internet connection.'));
    } catch (e) {
      return Left(Failure('Failed to delete order item: $e'));
    }
  }

  // -------------------------------------------------------------------
  // KOT (Kitchen Order Ticket) – send to kitchen
  // -------------------------------------------------------------------

  Future<Either<Failure, void>> sendToKitchen(String orderId) async {
    try {
      if (!await connectionChecker.isConnected) {
        return const Left(Failure('No internet connection.'));
      }

      final uri = _buildUri(ApiEndpoints.orderKot(orderId));
      final response = await client.post(
        uri,
        headers: {'Content-Type': 'application/json'},
      );

      if (response.statusCode != 200 && response.statusCode != 201) {
        final message = parsePydanticError(response.body);
        return Left(Failure(message, response.statusCode));
      }

      return const Right(null);
    } on SocketException {
      return const Left(Failure('No internet connection.'));
    } catch (e) {
      return Left(Failure('Failed to send order to kitchen: $e'));
    }
  }
}
