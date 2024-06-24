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
        /*AutoRoute(
          path: '/authorization',
          page: AuthorizationRoute.page,
        ),*/
        AutoRoute(
          path: '/',
          initial: true,
          page: HomeRoute.page,
          children: [
            AutoRoute(
              path: 'showcase-tab',
              initial: true,
              page: ShowcaseTab.page,
              children: [
                AutoRoute(
                  path: 'showcase',
                  initial: true,
                  page: ShowcaseRoute.page,
                ),
                AutoRoute(
                  path: 'add_banner',
                  page: AddBannerRoute.page,
                ),
              ],
            ),
            AutoRoute(
              path: 'history-tab',
              page: HistoryTab.page,
              children: [
                AutoRoute(
                  path: 'history',
                  initial: true,
                  page: HistoryRoute.page,
                ),
              ],
            ),
          ],
        )
      ];
}

@RoutePage(name: 'ShowcaseTab')
class ShowcaseTabPage extends AutoRouter {
  const ShowcaseTabPage({super.key});
}

@RoutePage(name: 'HistoryTab')
class HistoryTabPage extends AutoRouter {
  const HistoryTabPage({super.key});
}

@RoutePage(name: 'DeeplinkTab')
class DeeplinkTabPage extends AutoRouter {
  const DeeplinkTabPage({super.key});
}

@RoutePage(name: 'CatalogTab')
class CatalogTabPage extends AutoRouter {
  const CatalogTabPage({super.key});
}

@RoutePage(name: 'StoresTab')
class StoresTabPage extends AutoRouter {
  const StoresTabPage({super.key});
}

@RoutePage(name: 'OrdersTab')
class OrdersTabPage extends AutoRouter {
  const OrdersTabPage({super.key});
}

@RoutePage(name: 'DeliveryTab')
class DeliveryTabPage extends AutoRouter {
  const DeliveryTabPage({super.key});
}

@RoutePage(name: 'PaymentTab')
class PaymentTabPage extends AutoRouter {
  const PaymentTabPage({super.key});
}

@RoutePage(name: 'ReviewsTab')
class ReviewsTabPage extends AutoRouter {
  const ReviewsTabPage({super.key});
}

@RoutePage(name: 'FeedTab')
class FeedTabPage extends AutoRouter {
  const FeedTabPage({super.key});
}

@RoutePage(name: 'SettingsTab')
class SettingsTabPage extends AutoRouter {
  const SettingsTabPage({super.key});
}
