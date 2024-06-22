// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Banner _$BannerFromJson(Map<String, dynamic> json) => Banner(
      id: (json['id'] as num?)?.toInt(),
      product_id: (json['product_id'] as num?)?.toInt(),
      image: json['image'] as String?,
      header: json['header'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$BannerToJson(Banner instance) => <String, dynamic>{
      'id': instance.id,
      'product_id': instance.product_id,
      'image': instance.image,
      'header': instance.header,
      'description': instance.description,
    };
