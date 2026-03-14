import 'package:freezed_annotation/freezed_annotation.dart';

part 'inventory_models.freezed.dart';
part 'inventory_models.g.dart';

// ---------------------------------------------------------------------------
// Inventory Item
// ---------------------------------------------------------------------------

@freezed
abstract class InventoryItem with _$InventoryItem {
  const factory InventoryItem({
    required String id,
    @JsonKey(name: 'store_id') required String storeId,
    required String name,
    String? sku,
    String? category,
    @JsonKey(name: 'unit_id') required String unitId,
    @JsonKey(name: 'min_stock') @Default(0) double minStock,
    @JsonKey(name: 'max_stock') double? maxStock,
    @JsonKey(name: 'reorder_level') double? reorderLevel,
    @JsonKey(name: 'reorder_quantity') double? reorderQuantity,
    @JsonKey(name: 'last_purchase_price') double? lastPurchasePrice,
    @JsonKey(name: 'average_cost') double? averageCost,
    @JsonKey(name: 'is_active') @Default(true) bool isActive,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  }) = _InventoryItem;

  factory InventoryItem.fromJson(Map<String, dynamic> json) =>
      _$InventoryItemFromJson(json);
}

// ---------------------------------------------------------------------------
// Inventory Item Create
// ---------------------------------------------------------------------------

@freezed
abstract class InventoryItemCreate with _$InventoryItemCreate {
  const factory InventoryItemCreate({
    @JsonKey(name: 'store_id') required String storeId,
    required String name,
    String? sku,
    String? category,
    @JsonKey(name: 'unit_id') required String unitId,
    @JsonKey(name: 'min_stock') @Default(0) double minStock,
    @JsonKey(name: 'max_stock') double? maxStock,
    @JsonKey(name: 'is_active') @Default(true) bool isActive,
  }) = _InventoryItemCreate;

  factory InventoryItemCreate.fromJson(Map<String, dynamic> json) =>
      _$InventoryItemCreateFromJson(json);
}

// ---------------------------------------------------------------------------
// Inventory Item Update
// ---------------------------------------------------------------------------

@freezed
abstract class InventoryItemUpdate with _$InventoryItemUpdate {
  const factory InventoryItemUpdate({
    String? name,
    String? sku,
    String? category,
    @JsonKey(name: 'unit_id') String? unitId,
    @JsonKey(name: 'min_stock') double? minStock,
    @JsonKey(name: 'max_stock') double? maxStock,
    @JsonKey(name: 'is_active') bool? isActive,
  }) = _InventoryItemUpdate;

  factory InventoryItemUpdate.fromJson(Map<String, dynamic> json) =>
      _$InventoryItemUpdateFromJson(json);
}

// ---------------------------------------------------------------------------
// Stock Level
// ---------------------------------------------------------------------------

@freezed
abstract class StockLevel with _$StockLevel {
  const factory StockLevel({
    required String id,
    @JsonKey(name: 'item_id') required String itemId,
    @JsonKey(name: 'location_id') required String locationId,
    @Default(0) double quantity,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _StockLevel;

  factory StockLevel.fromJson(Map<String, dynamic> json) =>
      _$StockLevelFromJson(json);
}

// ---------------------------------------------------------------------------
// Stock Adjustment Create
// ---------------------------------------------------------------------------

@freezed
abstract class StockAdjustmentCreate with _$StockAdjustmentCreate {
  const factory StockAdjustmentCreate({
    @JsonKey(name: 'store_id') required String storeId,
    @JsonKey(name: 'item_id') required String itemId,
    @JsonKey(name: 'location_id') required String locationId,
    @JsonKey(name: 'quantity_change') required double quantityChange,
    required String reason,
    String? notes,
  }) = _StockAdjustmentCreate;

  factory StockAdjustmentCreate.fromJson(Map<String, dynamic> json) =>
      _$StockAdjustmentCreateFromJson(json);
}

// ---------------------------------------------------------------------------
// Stock Adjustment Response
// ---------------------------------------------------------------------------

@freezed
abstract class StockAdjustmentResponse with _$StockAdjustmentResponse {
  const factory StockAdjustmentResponse({
    required String id,
    @JsonKey(name: 'store_id') required String storeId,
    @JsonKey(name: 'item_id') required String itemId,
    @JsonKey(name: 'location_id') required String locationId,
    @JsonKey(name: 'quantity_change') required double quantityChange,
    required String reason,
    String? notes,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  }) = _StockAdjustmentResponse;

  factory StockAdjustmentResponse.fromJson(Map<String, dynamic> json) =>
      _$StockAdjustmentResponseFromJson(json);
}

// ---------------------------------------------------------------------------
// Inventory Unit
// ---------------------------------------------------------------------------

@freezed
abstract class InventoryUnit with _$InventoryUnit {
  const factory InventoryUnit({
    required String id,
    @JsonKey(name: 'store_id') required String storeId,
    required String name,
    required String abbreviation,
    @JsonKey(name: 'conversion_factor') @Default(1.0) double conversionFactor,
  }) = _InventoryUnit;

  factory InventoryUnit.fromJson(Map<String, dynamic> json) =>
      _$InventoryUnitFromJson(json);
}

// ---------------------------------------------------------------------------
// Inventory Location
// ---------------------------------------------------------------------------

@freezed
abstract class InventoryLocation with _$InventoryLocation {
  const factory InventoryLocation({
    required String id,
    @JsonKey(name: 'store_id') required String storeId,
    required String name,
    String? description,
    @JsonKey(name: 'is_active') @Default(true) bool isActive,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  }) = _InventoryLocation;

  factory InventoryLocation.fromJson(Map<String, dynamic> json) =>
      _$InventoryLocationFromJson(json);
}

// ---------------------------------------------------------------------------
// Inventory Unit Create
// ---------------------------------------------------------------------------

@freezed
abstract class InventoryUnitCreate with _$InventoryUnitCreate {
  const factory InventoryUnitCreate({
    @JsonKey(name: 'store_id') required String storeId,
    required String name,
    required String abbreviation,
    @JsonKey(name: 'conversion_factor') @Default(1.0) double conversionFactor,
  }) = _InventoryUnitCreate;

  factory InventoryUnitCreate.fromJson(Map<String, dynamic> json) =>
      _$InventoryUnitCreateFromJson(json);
}

// ---------------------------------------------------------------------------
// Inventory Location Create
// ---------------------------------------------------------------------------

@freezed
abstract class InventoryLocationCreate with _$InventoryLocationCreate {
  const factory InventoryLocationCreate({
    @JsonKey(name: 'store_id') required String storeId,
    required String name,
    String? description,
    @JsonKey(name: 'is_active') @Default(true) bool isActive,
  }) = _InventoryLocationCreate;

  factory InventoryLocationCreate.fromJson(Map<String, dynamic> json) =>
      _$InventoryLocationCreateFromJson(json);
}

// ---------------------------------------------------------------------------
// Item Availability Update
// ---------------------------------------------------------------------------

@freezed
abstract class ItemAvailabilityUpdate with _$ItemAvailabilityUpdate {
  const factory ItemAvailabilityUpdate({
    @JsonKey(name: 'is_active') required bool isActive,
  }) = _ItemAvailabilityUpdate;

  factory ItemAvailabilityUpdate.fromJson(Map<String, dynamic> json) =>
      _$ItemAvailabilityUpdateFromJson(json);
}

// ---------------------------------------------------------------------------
// Recipe Line (matches backend RecipeLineResponse)
// ---------------------------------------------------------------------------

@freezed
abstract class RecipeIngredient with _$RecipeIngredient {
  const factory RecipeIngredient({
    required String id,
    @JsonKey(name: 'recipe_id') required String recipeId,
    @JsonKey(name: 'ingredient_id') required String ingredientId,
    required double quantity,
    @JsonKey(name: 'unit_id') String? unitId,
  }) = _RecipeIngredient;

  factory RecipeIngredient.fromJson(Map<String, dynamic> json) =>
      _$RecipeIngredientFromJson(json);
}

// ---------------------------------------------------------------------------
// Recipe Line Create (matches backend RecipeLineCreate)
// ---------------------------------------------------------------------------

@freezed
abstract class RecipeIngredientCreate with _$RecipeIngredientCreate {
  const factory RecipeIngredientCreate({
    @JsonKey(name: 'ingredient_id') required String ingredientId,
    required double quantity,
    @JsonKey(name: 'unit_id') String? unitId,
  }) = _RecipeIngredientCreate;

  factory RecipeIngredientCreate.fromJson(Map<String, dynamic> json) =>
      _$RecipeIngredientCreateFromJson(json);
}

// ---------------------------------------------------------------------------
// Recipe
// ---------------------------------------------------------------------------

@freezed
abstract class Recipe with _$Recipe {
  const factory Recipe({
    required String id,
    @JsonKey(name: 'store_id') String? storeId,
    @JsonKey(name: 'product_id') String? productId,
    required String name,
    String? description,
    @JsonKey(name: 'yield_quantity') @Default(1.0) double yieldQuantity,
    @JsonKey(name: 'wastage_percent') @Default(0) double wastagePercent,
    @JsonKey(name: 'is_active') @Default(true) bool isActive,
    @Default([]) List<RecipeIngredient> lines,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  }) = _Recipe;

  factory Recipe.fromJson(Map<String, dynamic> json) => _$RecipeFromJson(json);
}

// ---------------------------------------------------------------------------
// Recipe Create
// ---------------------------------------------------------------------------

@freezed
abstract class RecipeCreate with _$RecipeCreate {
  const factory RecipeCreate({
    @JsonKey(name: 'store_id') required String storeId,
    @JsonKey(name: 'product_id') required String productId,
    required String name,
    String? description,
    @JsonKey(name: 'yield_quantity') @Default(1.0) double yieldQuantity,
    @JsonKey(name: 'wastage_percent') @Default(0) double wastagePercent,
    @JsonKey(name: 'is_active') @Default(true) bool isActive,
    @Default([]) List<RecipeIngredientCreate> lines,
  }) = _RecipeCreate;

  factory RecipeCreate.fromJson(Map<String, dynamic> json) =>
      _$RecipeCreateFromJson(json);
}

// ---------------------------------------------------------------------------
// Recipe Update
// ---------------------------------------------------------------------------

@freezed
abstract class RecipeUpdate with _$RecipeUpdate {
  const factory RecipeUpdate({
    String? name,
    String? description,
    @JsonKey(name: 'yield_quantity') double? yieldQuantity,
    @JsonKey(name: 'wastage_percent') double? wastagePercent,
    @JsonKey(name: 'is_active') bool? isActive,
    List<RecipeIngredientCreate>? lines,
  }) = _RecipeUpdate;

  factory RecipeUpdate.fromJson(Map<String, dynamic> json) =>
      _$RecipeUpdateFromJson(json);
}

// ---------------------------------------------------------------------------
// Inventory Transfer
// ---------------------------------------------------------------------------

@freezed
abstract class InventoryTransfer with _$InventoryTransfer {
  const factory InventoryTransfer({
    required String id,
    @JsonKey(name: 'store_id') required String storeId,
    @JsonKey(name: 'from_location_id') required String fromLocationId,
    @JsonKey(name: 'from_location_name') String? fromLocationName,
    @JsonKey(name: 'to_location_id') required String toLocationId,
    @JsonKey(name: 'to_location_name') String? toLocationName,
    @JsonKey(name: 'item_id') required String itemId,
    @JsonKey(name: 'item_name') String? itemName,
    required double quantity,
    @Default('pending') String status,
    String? notes,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  }) = _InventoryTransfer;

  factory InventoryTransfer.fromJson(Map<String, dynamic> json) =>
      _$InventoryTransferFromJson(json);
}

// ---------------------------------------------------------------------------
// Transfer Create
// ---------------------------------------------------------------------------

@freezed
abstract class TransferCreate with _$TransferCreate {
  const factory TransferCreate({
    @JsonKey(name: 'store_id') required String storeId,
    @JsonKey(name: 'from_location_id') required String fromLocationId,
    @JsonKey(name: 'to_location_id') required String toLocationId,
    @JsonKey(name: 'item_id') required String itemId,
    required double quantity,
    String? notes,
  }) = _TransferCreate;

  factory TransferCreate.fromJson(Map<String, dynamic> json) =>
      _$TransferCreateFromJson(json);
}

// ---------------------------------------------------------------------------
// Transfer Status Update
// ---------------------------------------------------------------------------

@freezed
abstract class TransferStatusUpdate with _$TransferStatusUpdate {
  const factory TransferStatusUpdate({required String status}) =
      _TransferStatusUpdate;

  factory TransferStatusUpdate.fromJson(Map<String, dynamic> json) =>
      _$TransferStatusUpdateFromJson(json);
}

// ---------------------------------------------------------------------------
// Out Of Stock Item
// ---------------------------------------------------------------------------

@freezed
abstract class OutOfStockItem with _$OutOfStockItem {
  const factory OutOfStockItem({
    required String id,
    @JsonKey(name: 'store_id') required String storeId,
    required String name,
    String? sku,
    String? category,
    @JsonKey(name: 'is_active') @Default(false) bool isActive,
  }) = _OutOfStockItem;

  factory OutOfStockItem.fromJson(Map<String, dynamic> json) =>
      _$OutOfStockItemFromJson(json);
}
