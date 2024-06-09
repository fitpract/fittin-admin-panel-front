import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

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
      route: PageRouteInfo('showcase'),
      icon: Icons.shopping_cart,
      label: 'Витрина',
    ),
    RouteDestination(
      route: PageRouteInfo('stories'),
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

  int selectedIndex = 0;
  bool extended = false;
  double leadingWidth = 150;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEDEDED),
      appBar: AppBar(
        leadingWidth: leadingWidth,
        leading: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            extended
                ? const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.logo_dev, size: 50),
                      Text(
                        'FITTIN',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  )
                : const Icon(Icons.logo_dev, size: 50),
            IconButton(
              onPressed: () {
                setState(() {
                  extended = !extended;
                  if (leadingWidth == 150) {
                    leadingWidth = 250;
                  } else {
                    leadingWidth = 150;
                  }
                });
              },
              icon: extended
                  ? const Icon(Icons.arrow_back_ios_new_outlined)
                  : const Icon(Icons.arrow_forward_ios_outlined),
            )
          ],
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
                  fillColor: Color(0xFFF3F3F9),
                  contentPadding: EdgeInsets.all(10),
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
      ),
      body: Row(
        children: [
          NavigationRail(
            backgroundColor: const Color(0xFFEDEDED),
            extended: extended,
            labelType: NavigationRailLabelType.none,
            elevation: 5,
            useIndicator: false,
            selectedIndex: selectedIndex,
            onDestinationSelected: (index) {
              setState(() {
                selectedIndex = index;
                context.navigateTo(destinations[index].route);
              });
            },
            destinations: destinations
                .map(
                  (item) => NavigationRailDestination(
                    icon: Icon(item.icon),
                    label: Text(item.label),
                    padding: EdgeInsets.symmetric(vertical: 10),
                  ),
                )
                .toList(),
          ),
          Expanded(
            child: Container(),
          ),
        ],
      ),
    );
  }
}
