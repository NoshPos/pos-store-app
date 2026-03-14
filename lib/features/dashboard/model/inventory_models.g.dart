// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_InventoryItem _$InventoryItemFromJson(Map<String, dynamic> json) =>
    _InventoryItem(
      id: json['id'] as String,
      storeId: json['store_id'] as String,
      name: json['name'] as String,
      sku: json['sku'] as String?,
      category: json['category'] as String?,
      unitId: json['unit_id'] as String,
      minStock: (json['min_stock'] as num?)?.toDouble() ?? 0,
      maxStock: (json['max_stock'] as num?)?.toDouble(),
      reorderLevel: (json['reorder_level'] as num?)?.toDouble(),
      reorderQuantity: (json['reorder_quantity'] as num?)?.toDouble(),
      lastPurchasePrice: (json['last_purchase_price'] as num?)?.toDouble(),
      averageCost: (json['average_cost'] as num?)?.toDouble(),
      isActive: json['is_active'] as bool? ?? true,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$InventoryItemToJson(_InventoryItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'store_id': instance.storeId,
      'name': instance.name,
      'sku': instance.sku,
      'category': instance.category,
      'unit_id': instance.unitId,
      'min_stock': instance.minStock,
      'max_stock': instance.maxStock,
      'reorder_level': instance.reorderLevel,
      'reorder_quantity': instance.reorderQuantity,
      'last_purchase_price': instance.lastPurchasePrice,
      'average_cost': instance.averageCost,
      'is_active': instance.isActive,
      'created_at': instance.createdAt?.toIso8601String(),
    };

_InventoryItemCreate _$InventoryItemCreateFromJson(Map<String, dynamic> json) =>
    _InventoryItemCreate(
      storeId: json['store_id'] as String,
      name: json['name'] as String,
      sku: json['sku'] as String?,
      category: json['category'] as String?,
      unitId: json['unit_id'] as String,
      minStock: (json['min_stock'] as num?)?.toDouble() ?? 0,
      maxStock: (json['max_stock'] as num?)?.toDouble(),
      isActive: json['is_active'] as bool? ?? true,
    );

Map<String, dynamic> _$InventoryItemCreateToJson(
  _InventoryItemCreate instance,
) => <String, dynamic>{
  'store_id': instance.storeId,
  'name': instance.name,
  'sku': instance.sku,
  'category': instance.category,
  'unit_id': instance.unitId,
  'min_stock': instance.minStock,
  'max_stock': instance.maxStock,
  'is_active': instance.isActive,
};

_InventoryItemUpdate _$InventoryItemUpdateFromJson(Map<String, dynamic> json) =>
    _InventoryItemUpdate(
      name: json['name'] as String?,
      sku: json['sku'] as String?,
      category: json['category'] as String?,
      unitId: json['unit_id'] as String?,
      minStock: (json['min_stock'] as num?)?.toDouble(),
      maxStock: (json['max_stock'] as num?)?.toDouble(),
      isActive: json['is_active'] as bool?,
    );

Map<String, dynamic> _$InventoryItemUpdateToJson(
  _InventoryItemUpdate instance,
) => <String, dynamic>{
  'name': instance.name,
  'sku': instance.sku,
  'category': instance.category,
  'unit_id': instance.unitId,
  'min_stock': instance.minStock,
  'max_stock': instance.maxStock,
  'is_active': instance.isActive,
};

_StockLevel _$StockLevelFromJson(Map<String, dynamic> json) => _StockLevel(
  id: json['id'] as String,
  itemId: json['item_id'] as String,
  locationId: json['location_id'] as String,
  quantity: (json['quantity'] as num?)?.toDouble() ?? 0,
  updatedAt: json['updated_at'] == null
      ? null
      : DateTime.parse(json['updated_at'] as String),
);

Map<String, dynamic> _$StockLevelToJson(_StockLevel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'item_id': instance.itemId,
      'location_id': instance.locationId,
      'quantity': instance.quantity,
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

_StockAdjustmentCreate _$StockAdjustmentCreateFromJson(
  Map<String, dynamic> json,
) => _StockAdjustmentCreate(
  storeId: json['store_id'] as String,
  itemId: json['item_id'] as String,
  locationId: json['location_id'] as String,
  quantityChange: (json['quantity_change'] as num).toDouble(),
  reason: json['reason'] as String,
  notes: json['notes'] as String?,
);

Map<String, dynamic> _$StockAdjustmentCreateToJson(
  _StockAdjustmentCreate instance,
) => <String, dynamic>{
  'store_id': instance.storeId,
  'item_id': instance.itemId,
  'location_id': instance.locationId,
  'quantity_change': instance.quantityChange,
  'reason': instance.reason,
  'notes': instance.notes,
};

_StockAdjustmentResponse _$StockAdjustmentResponseFromJson(
  Map<String, dynamic> json,
) => _StockAdjustmentResponse(
  id: json['id'] as String,
  storeId: json['store_id'] as String,
  itemId: json['item_id'] as String,
  locationId: json['location_id'] as String,
  quantityChange: (json['quantity_change'] as num).toDouble(),
  reason: json['reason'] as String,
  notes: json['notes'] as String?,
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
);

Map<String, dynamic> _$StockAdjustmentResponseToJson(
  _StockAdjustmentResponse instance,
) => <String, dynamic>{
  'id': instance.id,
  'store_id': instance.storeId,
  'item_id': instance.itemId,
  'location_id': instance.locationId,
  'quantity_change': instance.quantityChange,
  'reason': instance.reason,
  'notes': instance.notes,
  'created_at': instance.createdAt?.toIso8601String(),
};

_InventoryUnit _$InventoryUnitFromJson(Map<String, dynamic> json) =>
    _InventoryUnit(
      id: json['id'] as String,
      storeId: json['store_id'] as String,
      name: json['name'] as String,
      abbreviation: json['abbreviation'] as String,
      conversionFactor: (json['conversion_factor'] as num?)?.toDouble() ?? 1.0,
    );

Map<String, dynamic> _$InventoryUnitToJson(_InventoryUnit instance) =>
    <String, dynamic>{
      'id': instance.id,
      'store_id': instance.storeId,
      'name': instance.name,
      'abbreviation': instance.abbreviation,
      'conversion_factor': instance.conversionFactor,
    };

_InventoryLocation _$InventoryLocationFromJson(Map<String, dynamic> json) =>
    _InventoryLocation(
      id: json['id'] as String,
      storeId: json['store_id'] as String,
      name: json['name'] as String,
      description: json['description'] as String?,
      isActive: json['is_active'] as bool? ?? true,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$InventoryLocationToJson(_InventoryLocation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'store_id': instance.storeId,
      'name': instance.name,
      'description': instance.description,
      'is_active': instance.isActive,
      'created_at': instance.createdAt?.toIso8601String(),
    };

_InventoryUnitCreate _$InventoryUnitCreateFromJson(Map<String, dynamic> json) =>
    _InventoryUnitCreate(
      storeId: json['store_id'] as String,
      name: json['name'] as String,
      abbreviation: json['abbreviation'] as String,
      conversionFactor: (json['conversion_factor'] as num?)?.toDouble() ?? 1.0,
    );

Map<String, dynamic> _$InventoryUnitCreateToJson(
  _InventoryUnitCreate instance,
) => <String, dynamic>{
  'store_id': instance.storeId,
  'name': instance.name,
  'abbreviation': instance.abbreviation,
  'conversion_factor': instance.conversionFactor,
};

_InventoryLocationCreate _$InventoryLocationCreateFromJson(
  Map<String, dynamic> json,
) => _InventoryLocationCreate(
  storeId: json['store_id'] as String,
  name: json['name'] as String,
  description: json['description'] as String?,
  isActive: json['is_active'] as bool? ?? true,
);

Map<String, dynamic> _$InventoryLocationCreateToJson(
  _InventoryLocationCreate instance,
) => <String, dynamic>{
  'store_id': instance.storeId,
  'name': instance.name,
  'description': instance.description,
  'is_active': instance.isActive,
};

_ItemAvailabilityUpdate _$ItemAvailabilityUpdateFromJson(
  Map<String, dynamic> json,
) => _ItemAvailabilityUpdate(isActive: json['is_active'] as bool);

Map<String, dynamic> _$ItemAvailabilityUpdateToJson(
  _ItemAvailabilityUpdate instance,
) => <String, dynamic>{'is_active': instance.isActive};

_RecipeIngredient _$RecipeIngredientFromJson(Map<String, dynamic> json) =>
    _RecipeIngredient(
      id: json['id'] as String,
      recipeId: json['recipe_id'] as String,
      ingredientId: json['ingredient_id'] as String,
      quantity: (json['quantity'] as num).toDouble(),
      unitId: json['unit_id'] as String?,
    );

Map<String, dynamic> _$RecipeIngredientToJson(_RecipeIngredient instance) =>
    <String, dynamic>{
      'id': instance.id,
      'recipe_id': instance.recipeId,
      'ingredient_id': instance.ingredientId,
      'quantity': instance.quantity,
      'unit_id': instance.unitId,
    };

_RecipeIngredientCreate _$RecipeIngredientCreateFromJson(
  Map<String, dynamic> json,
) => _RecipeIngredientCreate(
  ingredientId: json['ingredient_id'] as String,
  quantity: (json['quantity'] as num).toDouble(),
  unitId: json['unit_id'] as String?,
);

Map<String, dynamic> _$RecipeIngredientCreateToJson(
  _RecipeIngredientCreate instance,
) => <String, dynamic>{
  'ingredient_id': instance.ingredientId,
  'quantity': instance.quantity,
  'unit_id': instance.unitId,
};

_Recipe _$RecipeFromJson(Map<String, dynamic> json) => _Recipe(
  id: json['id'] as String,
  storeId: json['store_id'] as String?,
  productId: json['product_id'] as String?,
  name: json['name'] as String,
  description: json['description'] as String?,
  yieldQuantity: (json['yield_quantity'] as num?)?.toDouble() ?? 1.0,
  wastagePercent: (json['wastage_percent'] as num?)?.toDouble() ?? 0,
  isActive: json['is_active'] as bool? ?? true,
  lines:
      (json['lines'] as List<dynamic>?)
          ?.map((e) => RecipeIngredient.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
);

Map<String, dynamic> _$RecipeToJson(_Recipe instance) => <String, dynamic>{
  'id': instance.id,
  'store_id': instance.storeId,
  'product_id': instance.productId,
  'name': instance.name,
  'description': instance.description,
  'yield_quantity': instance.yieldQuantity,
  'wastage_percent': instance.wastagePercent,
  'is_active': instance.isActive,
  'lines': instance.lines,
  'created_at': instance.createdAt?.toIso8601String(),
};

_RecipeCreate _$RecipeCreateFromJson(Map<String, dynamic> json) =>
    _RecipeCreate(
      storeId: json['store_id'] as String,
      productId: json['product_id'] as String,
      name: json['name'] as String,
      description: json['description'] as String?,
      yieldQuantity: (json['yield_quantity'] as num?)?.toDouble() ?? 1.0,
      wastagePercent: (json['wastage_percent'] as num?)?.toDouble() ?? 0,
      isActive: json['is_active'] as bool? ?? true,
      lines:
          (json['lines'] as List<dynamic>?)
              ?.map(
                (e) =>
                    RecipeIngredientCreate.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          const [],
    );

Map<String, dynamic> _$RecipeCreateToJson(_RecipeCreate instance) =>
    <String, dynamic>{
      'store_id': instance.storeId,
      'product_id': instance.productId,
      'name': instance.name,
      'description': instance.description,
      'yield_quantity': instance.yieldQuantity,
      'wastage_percent': instance.wastagePercent,
      'is_active': instance.isActive,
      'lines': instance.lines,
    };

_RecipeUpdate _$RecipeUpdateFromJson(Map<String, dynamic> json) =>
    _RecipeUpdate(
      name: json['name'] as String?,
      description: json['description'] as String?,
      yieldQuantity: (json['yield_quantity'] as num?)?.toDouble(),
      wastagePercent: (json['wastage_percent'] as num?)?.toDouble(),
      isActive: json['is_active'] as bool?,
      lines: (json['lines'] as List<dynamic>?)
          ?.map(
            (e) => RecipeIngredientCreate.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
    );

Map<String, dynamic> _$RecipeUpdateToJson(_RecipeUpdate instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'yield_quantity': instance.yieldQuantity,
      'wastage_percent': instance.wastagePercent,
      'is_active': instance.isActive,
      'lines': instance.lines,
    };

_InventoryTransfer _$InventoryTransferFromJson(Map<String, dynamic> json) =>
    _InventoryTransfer(
      id: json['id'] as String,
      storeId: json['store_id'] as String,
      fromLocationId: json['from_location_id'] as String,
      fromLocationName: json['from_location_name'] as String?,
      toLocationId: json['to_location_id'] as String,
      toLocationName: json['to_location_name'] as String?,
      itemId: json['item_id'] as String,
      itemName: json['item_name'] as String?,
      quantity: (json['quantity'] as num).toDouble(),
      status: json['status'] as String? ?? 'pending',
      notes: json['notes'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$InventoryTransferToJson(_InventoryTransfer instance) =>
    <String, dynamic>{
      'id': instance.id,
      'store_id': instance.storeId,
      'from_location_id': instance.fromLocationId,
      'from_location_name': instance.fromLocationName,
      'to_location_id': instance.toLocationId,
      'to_location_name': instance.toLocationName,
      'item_id': instance.itemId,
      'item_name': instance.itemName,
      'quantity': instance.quantity,
      'status': instance.status,
      'notes': instance.notes,
      'created_at': instance.createdAt?.toIso8601String(),
    };

_TransferCreate _$TransferCreateFromJson(Map<String, dynamic> json) =>
    _TransferCreate(
      storeId: json['store_id'] as String,
      fromLocationId: json['from_location_id'] as String,
      toLocationId: json['to_location_id'] as String,
      itemId: json['item_id'] as String,
      quantity: (json['quantity'] as num).toDouble(),
      notes: json['notes'] as String?,
    );

Map<String, dynamic> _$TransferCreateToJson(_TransferCreate instance) =>
    <String, dynamic>{
      'store_id': instance.storeId,
      'from_location_id': instance.fromLocationId,
      'to_location_id': instance.toLocationId,
      'item_id': instance.itemId,
      'quantity': instance.quantity,
      'notes': instance.notes,
    };

_TransferStatusUpdate _$TransferStatusUpdateFromJson(
  Map<String, dynamic> json,
) => _TransferStatusUpdate(status: json['status'] as String);

Map<String, dynamic> _$TransferStatusUpdateToJson(
  _TransferStatusUpdate instance,
) => <String, dynamic>{'status': instance.status};

_OutOfStockItem _$OutOfStockItemFromJson(Map<String, dynamic> json) =>
    _OutOfStockItem(
      id: json['id'] as String,
      storeId: json['store_id'] as String,
      name: json['name'] as String,
      sku: json['sku'] as String?,
      category: json['category'] as String?,
      isActive: json['is_active'] as bool? ?? false,
    );

Map<String, dynamic> _$OutOfStockItemToJson(_OutOfStockItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'store_id': instance.storeId,
      'name': instance.name,
      'sku': instance.sku,
      'category': instance.category,
      'is_active': instance.isActive,
    };
