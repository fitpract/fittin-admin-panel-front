import 'package:auto_route/auto_route.dart';

import '../../features/auth/presentation/auth_screen.dart';
import '../../features/password_recovery/presentation/password_recovery_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: AuthRoute.page, path: '/auth', initial: true),
    AutoRoute(page: PasswordRecoveryRoute.page, path: '/password-recovery'),
  ];

}