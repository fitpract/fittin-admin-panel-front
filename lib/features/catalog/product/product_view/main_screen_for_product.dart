import 'package:auto_route/auto_route.dart';
import 'package:fittin_admin_panel/features/catalog/product/product_view/widgets/add_product_button.dart';
import 'package:flutter/material.dart';

@RoutePage()
class MainScreenForProduct extends StatefulWidget {
  const MainScreenForProduct({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MainScreenForProductState();
}

class _MainScreenForProductState extends State<MainScreenForProduct> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            children: [
              AddProductButton(),
            ],
          ),
          Text('all products page'),
        ],
      ),
    );
  }
}
