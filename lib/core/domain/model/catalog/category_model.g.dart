// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoryModel _$CategoryModelFromJson(Map<String, dynamic> json) =>
    CategoryModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      categoryId: (json['categoryId'] as num).toInt(),
      price: (json['price'] as num).toInt(),
      count: (json['count'] as num).toInt(),
      rating: (json['rating'] as num).toInt(),
      image: json['image'] as String,
    );

Map<String, dynamic> _$CategoryModelToJson(CategoryModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'categoryId': instance.categoryId,
      'price': instance.price,
      'count': instance.count,
      'rating': instance.rating,
      'image': instance.image,
    };
