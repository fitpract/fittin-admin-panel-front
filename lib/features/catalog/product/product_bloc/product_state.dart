part of 'product_bloc.dart';

@immutable
sealed class ProductState {}

final class ProductInitial extends ProductState {}

final class ProductLoadedState extends ProductState {
  final List<ProductModel> products;
  ProductLoadedState({required this.products});
}

