import 'package:fittin_admin_panel/features/password_recovery/data/service/resetPassword_api_client.dart';
import '../../../core/utils/getIt.dart';
import 'models/changePassword_request.dart';
import 'models/codeVerification_request.dart';

class PasswordResetRepository {
  final ResetPasswordApiClient apiClient;

  PasswordResetRepository({ResetPasswordApiClient? apiClient})
      : apiClient = apiClient ?? getIt<ResetPasswordApiClient>();

  Future<void> sendEmail(String email) async {
    try {
      await apiClient.sendEmail(email);
    } catch (e) {
      throw Exception;
    }
  }

  Future<void> sendCode(String email, String code) async {
    try {
      final request = CodeVerificationRequest(code: code);
      await apiClient.sendCode(email, request);
    } catch (e) {
      throw Exception;
    }
  }

  Future<void> changePassword(String email, String password) async {
    try {
      final request = ChangePasswordRequest(password: password);
      await apiClient.changePassword(email, request);
    } catch (e) {
      throw Exception;
    }
  }
}
