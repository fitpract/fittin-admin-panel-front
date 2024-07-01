import 'package:json_annotation/json_annotation.dart';
import 'package:dio/dio.dart';

part 'category_request.g.dart';

@JsonSerializable()
class CategoryRequest {
  final String name;
  @JsonKey(name: 'parent_id')
  final int? parentId; // id родительской категории
  @JsonKey(name: 'sorder_order')
  final int sortOrder; // Позиция категории в списке
  @JsonKey(ignore: true)
  final MultipartFile? image; // Изображение категории

  CategoryRequest({
    required this.name,
    this.parentId,
    required this.sortOrder,
    this.image,
  });

  factory CategoryRequest.fromJson(Map<String, dynamic> json) =>
      _$CategoryRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryRequestToJson(this);
}
