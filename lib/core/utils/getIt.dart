import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../../core/data/service/secure_storage.dart';
import '../../features/auth/data/service/login_api_client.dart';
import '../../features/password_recovery/data/service/resetPassword_api_client.dart';

final GetIt getIt = GetIt.instance;

void setupLocator() {
  final Dio dio = Dio();

  // Добавляем логирование
  dio.interceptors.add(InterceptorsWrapper(
    onRequest: (options, handler) {
      print('Request[${options.method}] => PATH: ${options.path}');
      return handler.next(options);
    },
    onResponse: (response, handler) {
      print('Response[${response.statusCode}] => DATA: ${response.data}');
      return handler.next(response);
    },
    onError: (DioException e, handler) {
      print('Error[${e.response?.statusCode}] => MESSAGE: ${e.message}');
      return handler.next(e);
    },
  ));

  getIt.registerLazySingleton(() => LoginApiClient(dio));
  getIt.registerLazySingleton(() => SecureStorageService());
  getIt.registerLazySingleton(() => ResetPasswordApiClient(dio));
}