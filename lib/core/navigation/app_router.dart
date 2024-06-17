import 'package:auto_route/auto_route.dart';
import 'package:fittin_admin_panel/features/home/presentation/home_screen.dart';
import 'package:fittin_admin_panel/features/showcase/presentation/showcase_screen.dart';
import 'package:fittin_admin_panel/features/history/history_screen.dart';

import '../../features/showcase/presentation/widgets/screens/add_banner_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: HomeRoute.page, path: '/'),
    AutoRoute(page: HistoryRoute.page, path: '/history'),
    AutoRoute(page: ShowcaseRoute.page, path: '/showcase'),
    AutoRoute(page: AddBannerRoute.page, path: '/showcase/add_banner')
  ];

}