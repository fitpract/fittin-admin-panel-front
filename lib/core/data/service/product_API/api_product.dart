import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:fittin_admin_panel/core/domain/model/catalog/product/product_model.dart';

part 'api_product.g.dart';

@RestApi(baseUrl: 'fittinadminpanel.ru/')
abstract class RestClientProduct{
  factory RestClientProduct(Dio dio, {String baseUrl}) = _RestClientProduct;

  @GET("product")
  Future<List<ProductModel>> getProducts();

  @POST("product")    //TODO: изменить запрос на верный
  Future<List<ProductModel>> getProductsFromFile(String file);

}
