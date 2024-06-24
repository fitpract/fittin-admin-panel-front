import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:fittin_admin_panel/core/data/service/product_API/api_product.dart';
import 'package:fittin_admin_panel/core/domain/model/catalog/product/product_model.dart';
import 'package:meta/meta.dart';

part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductBloc() : super(ProductInitial()) {
    on<LoadProductFromFileEvent>(_loadProductEvent);
    on<AddNewProductEvent>(_addProductEvent);
  }

  _addProductEvent(event, emit) {
  }

  _loadProductEvent(LoadProductFromFileEvent event, emit) async{
    File file = event.file;
    List<ProductModel> products = await RestClientProduct(Dio()).getProductsFromFile(file.readAsString() as String);
    emit(ProductLoaded(products: products));
  }
}
