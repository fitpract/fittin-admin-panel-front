import 'package:auto_route/auto_route.dart';
import 'package:fittin_admin_panel/features/history/history_screen.dart';
import 'package:fittin_admin_panel/features/home/presentation/bloc/home_bloc.dart';
import 'package:fittin_admin_panel/features/home/presentation/widgets/custom_destination_icon.dart';
import 'package:fittin_admin_panel/features/home/presentation/widgets/web_bar.dart';
import 'package:fittin_admin_panel/features/showcase/showcase_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class RouteDestination {
  final PageRouteInfo route;
  final IconData icon;
  final String label;

  const RouteDestination({
    required this.route,
    required this.icon,
    required this.label,
  });
}

class _HomeScreenState extends State<HomeScreen> {
  final destinations = const [
    RouteDestination(
      route: PageRouteInfo('/showcase'),
      icon: Icons.shopping_cart,
      label: 'Витрина',
    ),
    RouteDestination(
      route: PageRouteInfo('/history'),
      icon: Icons.history,
      label: 'Истории',
    ),
    RouteDestination(
      route: PageRouteInfo('deeplink'),
      icon: Icons.open_in_new,
      label: 'Диплинк',
    ),
    RouteDestination(
      route: PageRouteInfo('catalog'),
      icon: Icons.apps,
      label: 'Каталог',
    ),
    RouteDestination(
      route: PageRouteInfo('stores'),
      icon: Icons.shop,
      label: 'Магазины',
    ),
    RouteDestination(
      route: PageRouteInfo('orders'),
      icon: Icons.shopping_basket,
      label: 'Заказы',
    ),
    RouteDestination(
      route: PageRouteInfo('delivery'),
      icon: Icons.email_outlined,
      label: 'Доставка',
    ),
    RouteDestination(
      route: PageRouteInfo('payment'),
      icon: Icons.monetization_on_outlined,
      label: 'Способы оплаты',
    ),
    RouteDestination(
      route: PageRouteInfo('reviews'),
      icon: Icons.message_outlined,
      label: 'Отзывы',
    ),
    RouteDestination(
      route: PageRouteInfo('feed'),
      icon: Icons.library_books_outlined,
      label: 'Лента и журналы',
    ),
    RouteDestination(
      route: PageRouteInfo('settings'),
      icon: Icons.settings_outlined,
      label: 'Настройки',
    ),
  ];

  final List<Widget> _screens = [
    ShowcaseScreen(),
    HistoryScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeBloc>(
      create: (context) => HomeBloc(),
      child: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          return Scaffold(
            backgroundColor: Theme.of(context).colorScheme.background,
            appBar: WebBar(bloc: context.read<HomeBloc>()),
            body: Row(
              children: [
                NavigationRail(
                  backgroundColor: Theme.of(context).colorScheme.surface,
                  selectedIconTheme: IconThemeData(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  unselectedIconTheme: IconThemeData(
                    color: Theme.of(context).colorScheme.outline,
                  ),
                  extended: state.expanded,
                  labelType: NavigationRailLabelType.none,
                  elevation: 5,
                  minWidth: 70,
                  minExtendedWidth: 200,
                  useIndicator: false,
                  selectedIndex: state.selectedPage,
                  onDestinationSelected: (index) {
                    context
                        .read<HomeBloc>()
                        .add(ChangePageEvent(pageIndex: index));
                  },
                  destinations: destinations
                      .map(
                        (item) => NavigationRailDestination(
                          icon: CustomDestinationIcon(
                            icon: Icon(item.icon),
                            selected: false,
                          ),
                          selectedIcon: CustomDestinationIcon(
                            icon: Icon(item.icon),
                            selected: true,
                          ),
                          label: Text(item.label),
                        ),
                      )
                      .toList(),
                ),
                Expanded(
                  child: _screens[state.selectedPage],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
