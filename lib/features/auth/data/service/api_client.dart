import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import '../dto/login_request.dart';
import '../dto/login_response.dart';

part 'api_client.g.dart';

@RestApi(baseUrl: "https://fittinadminpanel.ru")
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @POST("/login/")
  Future<LoginResponse> login(@Body() LoginRequest loginRequest);
}
