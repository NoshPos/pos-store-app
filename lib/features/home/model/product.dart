import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@freezed
abstract class Product with _$Product {
  const factory Product({
    required String id,
    @JsonKey(name: 'store_id') required String storeId,
    @JsonKey(name: 'category_id') String? categoryId,
    required String name,
    String? description,
    required double price,
    @JsonKey(name: 'tax_percent') @Default(0) double taxPercent,
    @JsonKey(name: 'is_active') @Default(true) bool isActive,
    @JsonKey(name: 'sort_order') @Default(0) int sortOrder,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}
