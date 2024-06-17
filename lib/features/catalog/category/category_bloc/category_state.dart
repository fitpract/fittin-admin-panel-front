part of 'category_bloc.dart';

@immutable
abstract class CategoryState {}

class CategoryInitial extends CategoryState {}

class LoadingCategoryState extends CategoryState{}

class CategoryReadyState extends CategoryState{
  late final List<CategoryModel> category;

  CategoryReadyState({required this.category});

}
