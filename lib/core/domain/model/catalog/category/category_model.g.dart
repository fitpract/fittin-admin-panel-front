// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoryModel _$CategoryModelFromJson(Map<String, dynamic> json) =>
    CategoryModel(
      idParentCategory: (json['idParentCategory'] as num?)?.toInt(),
      name: json['name'] as String,
      id: (json['id'] as num).toInt(),
      image: json['image'] as String,
    );

Map<String, dynamic> _$CategoryModelToJson(CategoryModel instance) =>
    <String, dynamic>{
      'idParentCategory': instance.idParentCategory,
      'name': instance.name,
      'id': instance.id,
      'image': instance.image,
    };
