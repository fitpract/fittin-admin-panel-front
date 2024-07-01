// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoryRequest _$CategoryRequestFromJson(Map<String, dynamic> json) =>
    CategoryRequest(
      name: json['name'] as String,
      parentId: (json['parent_id'] as num?)?.toInt(),
      sortOrder: (json['sorder_order'] as num).toInt(),
    );

Map<String, dynamic> _$CategoryRequestToJson(CategoryRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'parent_id': instance.parentId,
      'sorder_order': instance.sortOrder,
    };
