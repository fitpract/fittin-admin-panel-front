// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) => ProductModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      brand: json['brand'] as String,
      description: json['description'] as String,
      category:
          CategoryModel.fromJson(json['category'] as Map<String, dynamic>),
      price: (json['price'] as num).toInt(),
      count: (json['count'] as num).toInt(),
      rating: (json['rating'] as num).toInt(),
      images:
          (json['images'] as List<dynamic>).map((e) => e as String).toList(),
      sortingOrder: (json['sortingOrder'] as num).toInt(),
    );

Map<String, dynamic> _$ProductModelToJson(ProductModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'brand': instance.brand,
      'description': instance.description,
      'category': instance.category,
      'price': instance.price,
      'count': instance.count,
      'rating': instance.rating,
      'images': instance.images,
      'sortingOrder': instance.sortingOrder,
    };
