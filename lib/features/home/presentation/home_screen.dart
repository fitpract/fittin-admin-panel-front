import 'package:auto_route/auto_route.dart';
import 'package:fittin_admin_panel/features/history/history_screen.dart';
import 'package:fittin_admin_panel/features/home/presentation/bloc/home_bloc.dart';
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

  int _selectedIndex = 0;
  bool extended = false;
  double leadingWidth = 200;

  final List<Widget> _screens = [
    ShowcaseScreen(),
    HistoryScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    final bloc = HomeBloc();
    return BlocProvider<HomeBloc>(
      create: (context) => HomeBloc(),
      child: Scaffold(
        backgroundColor: const Color(0xFFEDEDED),
        appBar: WebBar(bloc: bloc),
        /*appBar: AppBar(
          //leadingWidth: leadingWidth,
          leading: BlocBuilder<HomeBloc, HomeState>(
            bloc: bloc,
            builder: (context, state) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  state.expanded
                      ? SvgPicture.asset(
                          'lib/core/style/assets/fittin-large-logo.svg',
                          semanticsLabel: 'Fittin',
                          alignment: Alignment.centerLeft,
                          height: 47,
                        )
                      : Padding(
                          padding: const EdgeInsets.only(left: 12),
                          child: SvgPicture.asset(
                            'lib/core/style/assets/fittin-small-logo.svg',
                            semanticsLabel: 'Fittin',
                            alignment: Alignment.centerLeft,
                            height: 30,
                          ),
                        ),
                  IconButton(
                    onPressed: () {
                      state.expanded
                          ? bloc.add(CollapseNavigationRailEvent())
                          : bloc.add(ExpandNavigationRailEvent());
                    },
                    icon: state.expanded
                        ? const Icon(Icons.arrow_back_ios_new_outlined)
                        : const Icon(Icons.arrow_forward_ios_outlined),
                  )
                ],
              );
            },
          ),
          title: Row(
            children: [
              Expanded(child: Container()),
              Container(
                height: 35,
                width: 250,
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search),
                    hintText: 'Поиск',
                    filled: true,
                    fillColor: const Color(0xFFF3F3F9),
                    contentPadding: const EdgeInsets.all(10),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(
                        width: 4,
                      ),
                      borderRadius: BorderRadius.circular(32),
                    ),
                  ),
                ),
              ),
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.account_circle_outlined),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.fullscreen),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.dark_mode_outlined),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.logout),
            ),
          ],
          elevation: 3,
          surfaceTintColor: Colors.white,
        ),*/
        body: Row(
          children: [
            BlocBuilder<HomeBloc, HomeState>(
              bloc: bloc,
              builder: (context, state) {
                return NavigationRail(
                  backgroundColor: const Color(0xFFEDEDED),
                  extended: state.expanded,
                  labelType: NavigationRailLabelType.none,
                  elevation: 5,
                  useIndicator: false,
                  selectedIndex: _selectedIndex,
                  onDestinationSelected: (index) {
                    setState(() {
                      _selectedIndex = index;
                    });
                  },
                  destinations: destinations
                      .map(
                        (item) => NavigationRailDestination(
                          icon: Icon(item.icon),
                          label: Text(item.label),
                          padding: const EdgeInsets.symmetric(vertical: 10),
                        ),
                      )
                      .toList(),
                );
              },
            ),
            Expanded(
              child: _screens[_selectedIndex],
            ),
          ],
        ),
      ),
    );
  }
}
