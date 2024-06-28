import 'package:auto_route/auto_route.dart';
import 'package:fittin_admin_panel/core/navigation/app_router.dart';
import 'package:fittin_admin_panel/features/home/presentation/bloc/home_bloc.dart';
import 'package:fittin_admin_panel/features/home/presentation/widgets/custom_navigation_rail/custom_navigation_rail.dart';
import 'package:fittin_admin_panel/features/home/presentation/widgets/custom_navigation_rail/custom_navigation_rail_destination.dart';
import 'package:fittin_admin_panel/features/home/presentation/widgets/custom_navigation_rail/custom_navigation_rail_dropdown_item.dart';
import 'package:fittin_admin_panel/features/home/presentation/widgets/web_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [
        ShowcaseTab(),
        HistoryTab(),
        DeeplinkTab(),
        CatalogTab(),
        MainRouteForCategory(),
        MainRouteForProduct(),
        //StoresTab(),
      ],
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);
        return BlocProvider<HomeBloc>(
          create: (context) => HomeBloc(),
          child: BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              return Scaffold(
                backgroundColor: Theme.of(context).colorScheme.background,
                appBar: WebBar(bloc: context.read<HomeBloc>()),
                body: Row(
                  children: [
                    CustomNavigationRail(
                      selectedIndex: tabsRouter.activeIndex,
                      onDestinationSelected: (index) {
                        context
                            .read<HomeBloc>()
                            .add(ChangePageEvent(pageIndex: index));
                        tabsRouter.setActiveIndex(index);
                      },
                      extended: state.expanded,
                      destinationPadding: const EdgeInsets.symmetric(vertical: 1),
                      destinations: destinations.map(
                        (item) {
                          if (item.hasDropdown) {
                            return CustomNavigationRailDestination.withDropdown(
                              icon: Icon(item.icon),
                              label: item.label,
                              dropdownItems: item.subRoutes
                                  ?.map(
                                    (subRoute) =>
                                        CustomNavigationRailDropdownItem(
                                            label: subRoute.label),
                                  )
                                  .toList(),
                            );
                          } else {
                            return CustomNavigationRailDestination
                                .withoutDropdown(
                              icon: Icon(item.icon),
                              label: item.label,
                            );
                          }
                        },
                      ).toList(),
                    ),
                    Expanded(
                      child: child,
                    ),
                  ],
                ),
              );
            },
          ),
        );
      },
    );
  }

  final destinations = [
    RouteDestination.withoutDropdown(
      icon: Icons.shopping_cart,
      label: 'Витрина',
    ),
    RouteDestination.withoutDropdown(
      icon: Icons.history,
      label: 'Истории',
    ),
    RouteDestination.withoutDropdown(
      icon: Icons.open_in_new,
      label: 'Диплинк',
    ),
    RouteDestination.withDropdown(
      icon: Icons.apps,
      label: 'Каталог',
      subRoutes: [
        SubRouteDestination(label: 'Категории'),
        SubRouteDestination(label: 'Все товары'),
      ],
    ),
    RouteDestination.withoutDropdown(
      icon: Icons.shop,
      label: 'Магазины',
    ),
    RouteDestination.withoutDropdown(
      icon: Icons.shopping_basket,
      label: 'Заказы',
    ),
    RouteDestination.withoutDropdown(
      icon: Icons.email_outlined,
      label: 'Доставка',
    ),
    RouteDestination.withoutDropdown(
      icon: Icons.monetization_on_outlined,
      label: 'Способы оплаты',
    ),
    RouteDestination.withoutDropdown(
      icon: Icons.message_outlined,
      label: 'Отзывы',
    ),
    RouteDestination.withoutDropdown(
      icon: Icons.library_books_outlined,
      label: 'Лента и журналы',
    ),
    RouteDestination.withoutDropdown(
      icon: Icons.settings_outlined,
      label: 'Настройки',
    ),
  ];
}

class RouteDestination {
  final IconData icon;
  final String label;
  final bool hasDropdown;
  final List<SubRouteDestination>? subRoutes;

  RouteDestination.withDropdown({
    required this.icon,
    required this.label,
    required this.subRoutes,
  })  : hasDropdown = true,
        assert(subRoutes != null && subRoutes.isNotEmpty);

  RouteDestination.withoutDropdown({
    required this.icon,
    required this.label,
  })  : hasDropdown = false,
        subRoutes = null;
}

class SubRouteDestination {
  final String label;

  SubRouteDestination({
    required this.label,
  });
}
