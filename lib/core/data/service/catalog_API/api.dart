import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:fittin_admin_panel/core/domain/model/catalog/category_model.dart';

part 'api.g.dart';

@RestApi(baseUrl: 'fittinadminpanel.ru/')
abstract class RestClientCategory{
  factory RestClientCategory(Dio dio, {String baseUrl}) = _RestClientCategory;

  @GET("product")
  Future<List<CategoryModel>> getCategory();

}
