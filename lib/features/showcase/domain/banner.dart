import 'package:json_annotation/json_annotation.dart';

part 'banner.g.dart';
@JsonSerializable()
class Banner {
  const Banner({this.id, this.product_id, this.image, this.header, this.description});

  factory Banner.fromJson(Map<String, dynamic> json) => _$BannerFromJson(json);

  final int? id;
  final int? product_id;
  final String? image;
  final String? header;
  final String? description;


  Map<String, dynamic> toJson() => _$BannerToJson(this);
}