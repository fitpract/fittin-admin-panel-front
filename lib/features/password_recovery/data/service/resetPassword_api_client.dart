import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import '../../domain/models/resetPassword_request.dart';

part 'resetPassword_api_client.g.dart';

@RestApi(baseUrl: "https://fittinadminpanel.ru")
abstract class ResetPasswordApiClient {
  factory ResetPasswordApiClient(Dio dio, {String baseUrl}) = _ResetPasswordApiClient;

  @GET("/resetPassword/{email}/")
  Future<void> sendResetPasswordCode(@Path("email") String email);

  @POST("/resetPassword/{email}/")
  Future<void> resetPassword(@Path("email") String email, @Body() ResetPasswordRequest body);
}