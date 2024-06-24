import 'package:json_annotation/json_annotation.dart';

part 'category_model.g.dart';

@JsonSerializable()
class CategoryModel{
  CategoryModel? parentCategory;
  late final String name;
  late final int idCategory;
  late final String diplink;
  late final List<String> images;


  CategoryModel({
    this.parentCategory,
    required this.name,
    required this.idCategory,
    required this.diplink,
    required this.images
  });

  factory CategoryModel.nullCategory() => CategoryModel(
    parentCategory: null,
    name: "",
    idCategory: 0,
    diplink: "",
    images: [],
  );
  factory CategoryModel.fromJson(Map<String, dynamic> json) => _$CategoryModelFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryModelToJson(this);

}