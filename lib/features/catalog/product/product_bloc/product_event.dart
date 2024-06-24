part of 'product_bloc.dart';

@immutable
sealed class ProductEvent {}

class AddNewProductEvent extends ProductEvent {}

class LoadProductFromFileEvent extends ProductEvent{
  late final File file;

  LoadProductFromFileEvent({required this.file});
}


