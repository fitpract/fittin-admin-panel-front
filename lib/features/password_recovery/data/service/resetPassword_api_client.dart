import 'package:fittin_admin_panel/features/password_recovery/domain/models/changePassword_request.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import '../../domain/models/codeVerification_request.dart';

part 'resetPassword_api_client.g.dart';

@RestApi(baseUrl: "https://fittinadminpanel.ru")
abstract class ResetPasswordApiClient {
  factory ResetPasswordApiClient(Dio dio, {String baseUrl}) = _ResetPasswordApiClient;

  @GET("/codeVerification/{email}/")
  Future<void> sendEmail(@Path("email") String email);

  @POST("/codeVerification/{email}/")
  Future<void> sendCode(@Path("email") String email, @Body() CodeVerificationRequest body);

  @POST("/resetPassword/{email}/")
  Future<void> changePassword(@Path("email") String email, @Body() ChangePasswordRequest body);
}