import '../data/service/api_client.dart';
import '../data/dto/login_request.dart';
import '../data/dto/login_response.dart';
import 'package:dio/dio.dart';

class LoginRepository {
  final ApiClient apiClient;

  static final LoginRepository _instance = LoginRepository._internal(ApiClient(Dio()));

  factory LoginRepository() {
    return _instance;
  }

  LoginRepository._internal(this.apiClient);

  Future<LoginResponse> login(String email, String password) {
    return apiClient.login(LoginRequest(email: email, password: password));
  }
}
