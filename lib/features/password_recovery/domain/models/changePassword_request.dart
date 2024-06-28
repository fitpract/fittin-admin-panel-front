class ChangePasswordRequest {
  final String password;

  ChangePasswordRequest({required this.password});

  Map<String, dynamic> toJson() {
    return {
      'new_password': password,
    };
  }
}
