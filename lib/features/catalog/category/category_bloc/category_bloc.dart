
import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:fittin_admin_panel/core/data/service/catalog_API/api.dart';
import 'package:fittin_admin_panel/core/domain/model/catalog/category_model.dart';
import 'package:meta/meta.dart';

part 'category_event.dart';
part 'category_state.dart';

class CategoryBloc extends Bloc<CatalogEvent, CategoryState> {
  CategoryBloc() : super(CategoryInitial()) {
    on<CatalogEvent>((event, emit) {});
    on<LoadCatalogEvent>(_loadCatalogEvent);
  }

  _loadCatalogEvent(event, emit) async {
    emit(LoadingCategoryState());
    List<CategoryModel> category = await RestClientCategory(Dio()).getCategory();
    emit(CategoryReadyState(category: category));

  }

}
