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

  factory CategoryModel.nullCategory() => CategoryModel(

  );
  factory CategoryModel.fromJson(Map<String, dynamic> json) => _$CategoryModelFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryModelToJson(this);

}