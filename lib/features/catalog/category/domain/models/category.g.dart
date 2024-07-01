// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Category _$CategoryFromJson(Map<String, dynamic> json) => Category(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      sorderOrder: (json['sorder_order'] as num?)?.toInt(),
      image: json['image'] as String?,
      parent: (json['parent'] as num?)?.toInt(),
    );

Map<String, dynamic> _$CategoryToJson(Category instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'sorder_order': instance.sorderOrder,
      'image': instance.image,
      'parent': instance.parent,
    };
