class ResetPasswordRequest {
  final String code;
  final String newPassword;

  ResetPasswordRequest({required this.code, required this.newPassword});

  Map<String, dynamic> toJson() {
    return {
      'code': code,
      'new_password': newPassword,
    };
  }
}
