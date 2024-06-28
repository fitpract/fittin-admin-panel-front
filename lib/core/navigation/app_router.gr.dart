// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    AddBannerRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AddBannerScreen(),
      );
    },
    AddNewAndRefactorProductRoute.name: (routeData) {
      final args = routeData.argsAs<AddNewAndRefactorProductRouteArgs>(
          orElse: () => const AddNewAndRefactorProductRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: AddNewAndRefactorProductScreen(key: args.key),
      );
    },
    CatalogTab.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CatalogTabPage(),
      );
    },
    DeeplinkRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const DeeplinkScreen(),
      );
    },
    DeeplinkTab.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const DeeplinkTabPage(),
      );
    },
    DeliveryTab.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const DeliveryTabPage(),
      );
    },
    FeedTab.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const FeedTabPage(),
      );
    },
    HistoryRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HistoryScreen(),
      );
    },
    HistoryTab.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HistoryTabPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeScreen(),
      );
    },
    MainRouteForCategory.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MainScreenForCategory(),
      );
    },
    MainRouteForProduct.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MainScreenForProduct(),
      );
    },
    OrdersTab.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const OrdersTabPage(),
      );
    },
    PaymentTab.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PaymentTabPage(),
      );
    },
    ReviewsTab.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ReviewsTabPage(),
      );
    },
    SettingsTab.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SettingsTabPage(),
      );
    },
    ShowcaseRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ShowcaseScreen(),
      );
    },
    ShowcaseTab.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ShowcaseTabPage(),
      );
    },
    StoresTab.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const StoresTabPage(),
      );
    },
  };
}

/// generated route for
/// [AddBannerScreen]
class AddBannerRoute extends PageRouteInfo<void> {
  const AddBannerRoute({List<PageRouteInfo>? children})
      : super(
          AddBannerRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddBannerRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [AddNewAndRefactorProductScreen]
class AddNewAndRefactorProductRoute
    extends PageRouteInfo<AddNewAndRefactorProductRouteArgs> {
  AddNewAndRefactorProductRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          AddNewAndRefactorProductRoute.name,
          args: AddNewAndRefactorProductRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'AddNewAndRefactorProductRoute';

  static const PageInfo<AddNewAndRefactorProductRouteArgs> page =
      PageInfo<AddNewAndRefactorProductRouteArgs>(name);
}

class AddNewAndRefactorProductRouteArgs {
  const AddNewAndRefactorProductRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'AddNewAndRefactorProductRouteArgs{key: $key}';
  }
}

/// generated route for
/// [CatalogTabPage]
class CatalogTab extends PageRouteInfo<void> {
  const CatalogTab({List<PageRouteInfo>? children})
      : super(
          CatalogTab.name,
          initialChildren: children,
        );

  static const String name = 'CatalogTab';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [DeeplinkScreen]
class DeeplinkRoute extends PageRouteInfo<void> {
  const DeeplinkRoute({List<PageRouteInfo>? children})
      : super(
          DeeplinkRoute.name,
          initialChildren: children,
        );

  static const String name = 'DeeplinkRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [DeeplinkTabPage]
class DeeplinkTab extends PageRouteInfo<void> {
  const DeeplinkTab({List<PageRouteInfo>? children})
      : super(
          DeeplinkTab.name,
          initialChildren: children,
        );

  static const String name = 'DeeplinkTab';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [DeliveryTabPage]
class DeliveryTab extends PageRouteInfo<void> {
  const DeliveryTab({List<PageRouteInfo>? children})
      : super(
          DeliveryTab.name,
          initialChildren: children,
        );

  static const String name = 'DeliveryTab';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [FeedTabPage]
class FeedTab extends PageRouteInfo<void> {
  const FeedTab({List<PageRouteInfo>? children})
      : super(
          FeedTab.name,
          initialChildren: children,
        );

  static const String name = 'FeedTab';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HistoryScreen]
class HistoryRoute extends PageRouteInfo<void> {
  const HistoryRoute({List<PageRouteInfo>? children})
      : super(
          HistoryRoute.name,
          initialChildren: children,
        );

  static const String name = 'HistoryRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HistoryTabPage]
class HistoryTab extends PageRouteInfo<void> {
  const HistoryTab({List<PageRouteInfo>? children})
      : super(
          HistoryTab.name,
          initialChildren: children,
        );

  static const String name = 'HistoryTab';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MainScreenForCategory]
class MainRouteForCategory extends PageRouteInfo<void> {
  const MainRouteForCategory({List<PageRouteInfo>? children})
      : super(
          MainRouteForCategory.name,
          initialChildren: children,
        );

  static const String name = 'MainRouteForCategory';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MainScreenForProduct]
class MainRouteForProduct extends PageRouteInfo<void> {
  const MainRouteForProduct({List<PageRouteInfo>? children})
      : super(
          MainRouteForProduct.name,
          initialChildren: children,
        );

  static const String name = 'MainRouteForProduct';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [OrdersTabPage]
class OrdersTab extends PageRouteInfo<void> {
  const OrdersTab({List<PageRouteInfo>? children})
      : super(
          OrdersTab.name,
          initialChildren: children,
        );

  static const String name = 'OrdersTab';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PaymentTabPage]
class PaymentTab extends PageRouteInfo<void> {
  const PaymentTab({List<PageRouteInfo>? children})
      : super(
          PaymentTab.name,
          initialChildren: children,
        );

  static const String name = 'PaymentTab';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ReviewsTabPage]
class ReviewsTab extends PageRouteInfo<void> {
  const ReviewsTab({List<PageRouteInfo>? children})
      : super(
          ReviewsTab.name,
          initialChildren: children,
        );

  static const String name = 'ReviewsTab';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SettingsTabPage]
class SettingsTab extends PageRouteInfo<void> {
  const SettingsTab({List<PageRouteInfo>? children})
      : super(
          SettingsTab.name,
          initialChildren: children,
        );

  static const String name = 'SettingsTab';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ShowcaseScreen]
class ShowcaseRoute extends PageRouteInfo<void> {
  const ShowcaseRoute({List<PageRouteInfo>? children})
      : super(
          ShowcaseRoute.name,
          initialChildren: children,
        );

  static const String name = 'ShowcaseRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ShowcaseTabPage]
class ShowcaseTab extends PageRouteInfo<void> {
  const ShowcaseTab({List<PageRouteInfo>? children})
      : super(
          ShowcaseTab.name,
          initialChildren: children,
        );

  static const String name = 'ShowcaseTab';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [StoresTabPage]
class StoresTab extends PageRouteInfo<void> {
  const StoresTab({List<PageRouteInfo>? children})
      : super(
          StoresTab.name,
          initialChildren: children,
        );

  static const String name = 'StoresTab';

  static const PageInfo<void> page = PageInfo<void>(name);
}
