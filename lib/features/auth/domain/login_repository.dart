import '../../../core/utils/getIt.dart';
import '../data/service/login_api_client.dart';
import '../../../core/data/service/secure_storage.dart';
import 'models/login_request.dart';

class LoginRepository {
  final LoginApiClient apiClient;
  final SecureStorageService storageService;

  LoginRepository({LoginApiClient? apiClient, SecureStorageService? storageService})
      : apiClient = apiClient ?? getIt<LoginApiClient>(),
        storageService = storageService ?? getIt<SecureStorageService>();

  Future<void> login(String email, String password) async {
    try {
      final response = await apiClient.login(LoginRequest(email: email, password: password));
      await storageService.saveToken(response.access);
    } catch (e) {
      print('Error during login: $e');
      rethrow;
    }
  }
}
