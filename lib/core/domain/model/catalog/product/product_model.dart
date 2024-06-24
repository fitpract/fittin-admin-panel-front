import 'package:fittin_admin_panel/core/domain/model/catalog/category/category_model.dart';
import 'package:json_annotation/json_annotation.dart';
part 'product_model.g.dart';

@JsonSerializable()
class ProductModel{
  late final int id;
  late final String name;
  late final String brand;
  late final String description;
  late final CategoryModel category;
  late final int price;
  late final int count;
  late final int rating;
  late final List<String> images;
  late final int sortingOrder;

  ProductModel({
    required this.id,
    required this.name,
    required this.brand,
    required this.description,
    required this.category,
    required this.price,
    required this.count,
    required this.rating,
    required this.images,
    required this.sortingOrder
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) => _$ProductModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProductModelToJson(this);

}