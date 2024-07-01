import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../../core/data/service/secure_storage.dart';
import '../../features/auth/data/service/login_api_client.dart';
import '../../features/catalog/category/data/service/category_api_client.dart';
import '../../features/password_recovery/data/service/resetPassword_api_client.dart';

final GetIt getIt = GetIt.instance;

void setupLocator() {
  final Dio dio = Dio();

  // Добавляем интерсептор для авторизации
  dio.interceptors.add(InterceptorsWrapper(
    onRequest: (options, handler) async {
      // Получаем доступ к SecureStorageService для получения токена
      final secureStorageService = getIt<SecureStorageService>();
      final accessToken = await secureStorageService.getToken();

      if (accessToken != null && accessToken.isNotEmpty) {
        options.headers['Authorization'] = 'Bearer $accessToken';
      }

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

  getIt.registerLazySingleton(() => dio);
  getIt.registerLazySingleton(() => LoginApiClient(dio));
  getIt.registerLazySingleton(() => SecureStorageService());
  getIt.registerLazySingleton(() => ResetPasswordApiClient(dio));
  getIt.registerLazySingleton(() => CategoryApiClient());
}
