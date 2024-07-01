import 'package:retrofit/http.dart';
import 'package:dio/dio.dart';
import '../../../../../core/utils/getIt.dart';
import '../../domain/models/category.dart';
import '../../domain/models/category_parent_response.dart';
import '../../domain/models/category_request.dart';

part 'category_api_client.g.dart';

@RestApi(baseUrl: "https://fittinadminpanel.ru")
abstract class CategoryApiClient {
  factory CategoryApiClient() {
    final dio = getIt<Dio>();
    return _CategoryApiClient(dio);
  }

  @GET("/category/")
  Future<List<Category>> getCategory();

  @POST("/category/")
  Future<Category> addCategory(@Body() CategoryRequest data);

  @GET("/category/{id}/")
  Future<Category> getCategoryById(@Path("id") int id);

  @POST("/category/{id}/")
  Future<Category> editCategoryById(@Path("id") int id, @Body() Category category);

  @DELETE("/category/")
  Future<void> deleteCategoryById(@Query("id") int id);

  @GET("/categoryByParent/{id}/")
  Future<CategoryParentResponse> getCountOfChildCategories(@Path("id") int id);
}
