import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class AddBannerScreen extends StatefulWidget {
  const AddBannerScreen({super.key});

  @override
  State<AddBannerScreen> createState() => _AddBannerScreenState();
}

class _AddBannerScreenState extends State<AddBannerScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Theme.of(context).colorScheme.background,
        child: Padding(
          padding: const EdgeInsets.only(top: 31, left: 28, right: 50, bottom: 35),
          child: Container(
            color: Theme.of(context).colorScheme.onPrimary,
            padding: const EdgeInsets.only(top: 27, left: 31, right: 47),
            alignment: Alignment.topLeft,
            child:   const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Создать или изменить элемент баннер"),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text("ID продукта")
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text("Изображенние баннера")
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text("Заголовок баннера")
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text("Оисание баннера")
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
    );
  }
}
