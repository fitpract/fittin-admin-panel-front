import 'dart:io';

import 'package:fittin_admin_panel/core/data/service/product_API/api_product.dart';
import 'package:fittin_admin_panel/core/domain/model/catalog/product/product_model.dart';

abstract class ProductRepository {
  Future<List<ProductModel>> sendFile(File file);
  Future<void> sendNewProduct(ProductModel product);
  Future<List<ProductModel>> getProducts();
}

class ProductRepositoryImpl extends ProductRepository {
  ProductRepositoryImpl(this.service);

  RestClientProduct service;

  @override
  Future<List<ProductModel>> sendFile(File file) async {
    return await service.getProductsFromFile(file.readAsString() as String);
  }
  @override
  Future<void> sendNewProduct(ProductModel product) async{
    await service.sendNewProduct(product);
  }

  Future<List<ProductModel>> getProducts() async{
    return await service.getProducts();
  }
}