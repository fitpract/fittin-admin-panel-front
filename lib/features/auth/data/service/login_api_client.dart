import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import '../../domain/models/login_request.dart';
import '../../domain/models/login_response.dart';

part 'login_api_client.g.dart';

@RestApi(baseUrl: "https://fittinadminpanel.ru")
abstract class LoginApiClient {
  factory LoginApiClient(Dio dio, {String baseUrl}) = _LoginApiClient;

  @POST("/login/")
  Future<LoginResponse> login(@Body() LoginRequest loginRequest);
}
