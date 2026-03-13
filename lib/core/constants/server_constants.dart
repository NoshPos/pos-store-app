import 'package:flutter_dotenv/flutter_dotenv.dart';

class ServerConstants {
  static String get baseUrl =>
      dotenv.env['API_BASE_URL'] ?? 'http://localhost:8000';
}

class ApiEndpoints {
  // Auth
  static const String login = 'auth/login';

  // Stores
  static const String stores = 'stores';
  static String storeById(String storeId) => 'stores/$storeId';
  static String storeTables(String storeId) => 'stores/$storeId/tables';

  // Products
  static const String categories = 'products/categories';
  static String categoryById(String categoryId) =>
      'products/categories/$categoryId';
  static const String products = 'products';
  static String productById(String productId) => 'products/$productId';

  // Orders
  static const String orders = 'orders';
  static String orderById(String orderId) => 'orders/$orderId';
  static String orderStatus(String orderId) => 'orders/$orderId/status';
  static String orderCancel(String orderId) => 'orders/$orderId/cancel';
  static const String orderPayments = 'orders/payments';
  static String orderPaymentsByOrder(String orderId) =>
      'orders/$orderId/payments';
  static String orderPaymentById(String paymentId) =>
      'orders/payments/$paymentId';
  static const String payments = 'orders/payments';

  // Employees
  static const String employees = 'employees';

  // Shifts
  static const String shifts = 'shifts';
  static String shiftById(String shiftId) => 'shifts/$shiftId';
  static String shiftClose(String shiftId) => 'shifts/$shiftId/close';

  // Order Items
  static String orderItems(String orderId) => 'orders/$orderId/items';
  static String orderItem(String orderId, String itemId) =>
      'orders/$orderId/items/$itemId';

  // KOT (Kitchen Order Tickets)
  static String orderKot(String orderId) => 'orders/$orderId/kot';
  static const String kitchenOrders = 'kitchen/orders';
  static String kitchenKotStatus(String kotId) => 'kitchen/kot/$kotId/status';

  // Inventory
  static const String inventoryItems = 'inventory/items';
  static String inventoryItemById(String itemId) => 'inventory/items/$itemId';
  static String inventoryItemAvailability(String itemId) =>
      'inventory/items/$itemId/availability';
  static const String inventoryStock = 'inventory/stock';
  static const String inventoryStockAdjustments = 'inventory/stock/adjustments';
  static const String inventoryUnits = 'inventory/units';
  static const String inventoryLocations = 'inventory/locations';
  static const String inventoryRecipes = 'inventory/recipes';
  static String inventoryRecipeById(String recipeId) =>
      'inventory/recipes/$recipeId';
  static const String inventoryTransfers = 'inventory/transfers';
  static String inventoryTransferStatus(String transferId) =>
      'inventory/transfers/$transferId/status';
  static const String inventoryOutOfStock = 'inventory/out-of-stock';
}
