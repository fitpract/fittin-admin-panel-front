import 'package:json_annotation/json_annotation.dart';
import 'category.dart';

part 'category_parent_response.g.dart';

@JsonSerializable()
class CategoryParentResponse {
  final int count;

  CategoryParentResponse({
    required this.count,
  });

  factory CategoryParentResponse.fromJson(Map<String, dynamic> json) =>
      _$CategoryParentResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryParentResponseToJson(this);
}
