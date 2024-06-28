part of 'product_bloc.dart';

@immutable
sealed class ProductEvent {}

class AddNewProductEvent extends ProductEvent {}

class LoadProductFromFileEvent extends ProductEvent{
  late final File file;

  LoadProductFromFileEvent({required this.file});
}

class CreateNewProductEvent extends ProductEvent{
  late final ProductModel productModel;
  CreateNewProductEvent({required this.productModel});
}

class GetProductListEvent extends ProductEvent{
  late ProductModel productModel;
  /// закомментировал чтобы не было ошибки
  GetProductListEvent(/*{required this.productModel}*/);
}


