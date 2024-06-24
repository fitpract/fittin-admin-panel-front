import 'package:dio/dio.dart' hide Headers;
import 'package:fittin_admin_panel/features/showcase/domain/app_banner.dart';
import 'package:retrofit/retrofit.dart';
part 'app_banner_client.g.dart';

@RestApi(baseUrl: 'https://fittinadminpanel.ru/')
abstract class AppBannerClient {
  factory AppBannerClient(Dio dio, {String baseUrl}) = _AppBannerClient;

  @GET('/banner')
  @Headers(<String, dynamic>{
    'Authorization': 'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNzE5MjM0MzUyLCJpYXQiOjE3MTkyMzA3NTIsImp0aSI6IjA4Y2UyYzVlOTBmNTRhMGU4MDViOGYyNjJjYjY5MjJjIiwidXNlcl9pZCI6MiwibmFtZSI6IkFCT0JBIn0.s36Ew7ywiJEASQF1quU7wvv3ohuJ_usLiT33e-RJmAU',
  })
  Future<List<AppBanner>> getBanners();

  @POST('/banner')
  Future<AppBanner> createBanner(@Body() AppBanner banner);
  @PUT('/banner/{id}')
  Future<AppBanner> updateBanner(@Path() String id, @Body() AppBanner banner);

  @DELETE('/banner/{id}')
  Future<void> deleteBanner(@Path() String id);

}
