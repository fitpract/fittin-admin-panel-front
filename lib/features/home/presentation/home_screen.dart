import 'package:auto_route/auto_route.dart';
import 'package:fittin_admin_panel/core/navigation/app_router.dart';
import 'package:fittin_admin_panel/features/history/history_screen.dart';
import 'package:fittin_admin_panel/features/home/presentation/bloc/home_bloc.dart';
import 'package:fittin_admin_panel/features/home/presentation/widgets/custom_destination_icon.dart';
import 'package:fittin_admin_panel/features/home/presentation/widgets/custom_destination_title.dart';
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
  final IconData icon;
  final String label;
  final bool hasDropdown;

  const RouteDestination({
    required this.icon,
    required this.label,
    required this.hasDropdown,
  });
}


class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [
        ShowcaseTab(),
        HistoryTab(),
        CategoryTab(),
        ProductsTab(),
        AddNewProductTab()
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
                        tabsRouter.setActiveIndex(index);
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
                          label: CustomDestinationTitle(
                            title: item.label,
                            hasDropDown: item.hasDropdown,
                          ),
                        ),
                      )
                          .toList(),
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

  final destinations = const [
    RouteDestination(
      icon: Icons.shopping_cart,
      label: 'Витрина',
      hasDropdown: false,
    ),
    RouteDestination(
      icon: Icons.history,
      label: 'Истории',
      hasDropdown: false,
    ),
    RouteDestination(
      icon: Icons.open_in_new,
      label: 'Диплинк',
      hasDropdown: true,
    ),
    RouteDestination(
      icon: Icons.apps,
      label: 'Каталог',
      hasDropdown: true,
    ),
    RouteDestination(
      icon: Icons.shop,
      label: 'Магазины',
      hasDropdown: false,
    ),
    RouteDestination(
      icon: Icons.shopping_basket,
      label: 'Заказы',
      hasDropdown: false,
    ),
    RouteDestination(
      icon: Icons.email_outlined,
      label: 'Доставка',
      hasDropdown: false,
    ),
    RouteDestination(
      icon: Icons.monetization_on_outlined,
      label: 'Способы оплаты',
      hasDropdown: false,
    ),
    RouteDestination(
      icon: Icons.message_outlined,
      label: 'Отзывы',
      hasDropdown: false,
    ),
    RouteDestination(
      icon: Icons.library_books_outlined,
      label: 'Лента и журналы',
      hasDropdown: false,
    ),
    RouteDestination(
      icon: Icons.settings_outlined,
      label: 'Настройки',
      hasDropdown: true,
    ),
  ];

}
