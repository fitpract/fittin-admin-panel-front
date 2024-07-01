import 'package:fittin_admin_panel/features/catalog/category/domain/models/category_request.dart';

import '../../../../core/utils/getIt.dart';
import '../data/service/category_api_client.dart';
import 'models/category.dart';

class CategoryRepository {
  final CategoryApiClient apiClient;

  CategoryRepository({CategoryApiClient? apiClient})
      : apiClient = apiClient ?? getIt<CategoryApiClient>();

  Future<List<Category>> getCategories() async {
    return await apiClient.getCategory();
  }

  Future<int> getCountOfChildCategories(int id) async {
    final response = await apiClient.getCountOfChildCategories(id);
    return response.count;
  }

  Future<Category> getCategoryById(int id) async {
    return await apiClient.getCategoryById(id);
  }

  Future<Category> addCategory(CategoryRequest categoryRequest) async {
    return await apiClient.addCategory(categoryRequest);
  }

  Future<Category> editCategoryById(int id, Category categoryRequest) async {
    return await apiClient.editCategoryById(id, categoryRequest);
  }

  Future<void> deleteCategoryById(int id) async {
    await apiClient.deleteCategoryById(id);
  }
}
