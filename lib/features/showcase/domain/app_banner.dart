import 'package:json_annotation/json_annotation.dart';

part 'app_banner.g.dart';
@JsonSerializable()
class AppBanner {
  const AppBanner({this.id, this.product_id, this.image, this.header, this.description});

  factory AppBanner.fromJson(Map<String, dynamic> json) => _$AppBannerFromJson(json);

  final int? id;
  final int? product_id;
  final String? image;
  final String? header;
  final String? description;


  Map<String, dynamic> toJson() => _$AppBannerToJson(this);
}