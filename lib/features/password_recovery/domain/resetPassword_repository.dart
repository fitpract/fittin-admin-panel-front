import 'package:fittin_admin_panel/features/password_recovery/data/service/resetPassword_api_client.dart';
import '../../../core/utils/getIt.dart';
import 'models/resetPassword_request.dart';

class PasswordResetRepository {
  final ResetPasswordApiClient apiClient;

  PasswordResetRepository({ResetPasswordApiClient? apiClient})
      : apiClient = apiClient ?? getIt<ResetPasswordApiClient>();

  Future<void> sendResetPasswordCode(String email) async {
    try {
      await apiClient.sendResetPasswordCode(email);
    } catch (e) {
      throw Exception('Error occurred while sending password reset code: $e');
    }
  }

  Future<void> resetPassword(String email, String code, String newPassword) async {
    try {
      final request = ResetPasswordRequest(code: code, newPassword: newPassword);
      await apiClient.resetPassword(email, request);
    } catch (e) {
      throw Exception('Error occurred while resetting password: $e');
    }
  }
}
