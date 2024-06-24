part of 'product_bloc.dart';

@immutable
sealed class ProductState {}

final class ProductInitial extends ProductState {}

final class ProductLoaded extends ProductState {
  final List<ProductModel> products;
  ProductLoaded({required this.products});
}

