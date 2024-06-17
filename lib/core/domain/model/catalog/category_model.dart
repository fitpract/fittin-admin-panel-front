import 'package:json_annotation/json_annotation.dart';

part 'category_model.g.dart';

@JsonSerializable()
class CategoryModel{
  late final int id;
  late final String name;
  late final int categoryId;
  late final int price;
  late final int count;
  late final int rating;
  late final String image;

  CategoryModel({
    required this.id,
    required this.name,
    required this.categoryId,
    required this.price,
    required this.count,
    required this.rating,
    required this.image
  });

  factory CategoryModel.fromJson(Map<String, dynamic> json) => _$CategoryModelFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryModelToJson(this);

}