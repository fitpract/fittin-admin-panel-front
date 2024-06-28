
import 'package:bloc/bloc.dart';
import 'package:fittin_admin_panel/core/domain/model/catalog/product/product_model.dart';
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

  }

}
