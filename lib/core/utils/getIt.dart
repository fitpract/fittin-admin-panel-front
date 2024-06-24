import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../../core/data/service/secure_storage.dart';
import '../../features/auth/data/service/login_api_client.dart';
import '../../features/password_recovery/data/service/resetPassword_api_client.dart';

final GetIt getIt = GetIt.instance;

void setupLocator() {
  final Dio dio = Dio();
  getIt.registerLazySingleton(() => LoginApiClient(dio));
  getIt.registerLazySingleton(() => SecureStorageService());
  getIt.registerLazySingleton(() => ResetPasswordApiClient(dio));
}
