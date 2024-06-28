class CodeVerificationRequest {
  final String code;

  CodeVerificationRequest({required this.code});

  Map<String, dynamic> toJson() {
    return {
      'code': code,
    };
  }
}
