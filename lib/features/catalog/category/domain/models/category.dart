import 'package:json_annotation/json_annotation.dart';

part 'category.g.dart';

@JsonSerializable()
class Category {
  final int id;
  final String name;
  @JsonKey(name: 'sorder_order')
  final int? sorderOrder;
  final String? image;
  final int? parent;

  Category({
    required this.id,
    required this.name,
    this.sorderOrder,
    this.image,
    this.parent,
  });

  factory Category.fromJson(Map<String, dynamic> json) => _$CategoryFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryToJson(this);
}
