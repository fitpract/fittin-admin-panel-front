import 'package:dio/dio.dart';
import 'package:fittin_admin_panel/features/showcase/domain/banner.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit/retrofit.dart';

part 'banner_client.g.dart';

@RestApi(baseUrl: 'https://fittinadminpanel.ru/')
abstract class BannerClient {
  factory BannerClient(Dio dio, {String baseUrl}) = _BannerClient;

  @GET('/Banner')
  Future<List<Banner>> getBanners();
}
