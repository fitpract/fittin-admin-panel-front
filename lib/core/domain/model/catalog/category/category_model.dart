import 'package:json_annotation/json_annotation.dart';

part 'category_model.g.dart';

@JsonSerializable()
class CategoryModel{
  final int? idParentCategory;
  late final String name;
  late final int id;
  late final String image;

  CategoryModel({
    this.idParentCategory,
    required this.name,
    required this.id,
    required this.image
  });

  /// написал это чтобы не было ошибки
  factory CategoryModel.nullCategory() => CategoryModel(
    id: 0,
    name: "",
    image: "",
  );

  factory CategoryModel.fromJson(Map<String, dynamic> json) => _$CategoryModelFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryModelToJson(this);

}