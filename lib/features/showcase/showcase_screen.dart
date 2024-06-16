import 'package:auto_route/auto_route.dart';
import 'package:fittin_admin_panel/core/style/theme/theme_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

@RoutePage()
class ShowcaseScreen extends StatefulWidget {
  const ShowcaseScreen({super.key});

  @override
  State<ShowcaseScreen> createState() => _ShowcaseScreenState();
}

enum SampleItem { banner, itemTwo, itemThree }
final List<String> list = ['Баннер', 'ещё элемент', 'и ещё элемент'];

class _ShowcaseScreenState extends State<ShowcaseScreen> {
  SampleItem? selectedMenu;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 27, left: 31, right: 47),
      alignment: Alignment.topRight,
      child: Column(
        children: [
          Row(
            children: [
              MenuAnchor(
                builder: (BuildContext context, MenuController controller,
                    Widget? child) {
                  return OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      overlayColor: Theme.of(context).colorScheme.background,
                      side: BorderSide(width: 1.0, color: Theme.of(context).colorScheme.primary),
                      backgroundColor: Theme.of(context).colorScheme.background,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      elevation: 0,
                    ),
                    onPressed: () {
                      if (controller.isOpen) {
                        controller.close();
                      } else {
                        controller.open();
                      }
                    },
                    child: Text(
                      'Добавить элементы',
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.primary),
                    ),
                  );
                },
                menuChildren: List<MenuItemButton>.generate(3,
                  (int index) => MenuItemButton(
                    style: const ButtonStyle(
                    ),
                    onPressed: () =>
                        setState(() => selectedMenu = SampleItem.values[index]),
                    child:  SizedBox(
                        width: 165.0,
                        child: Text(list[index])
                    ),
                  ),
                ),
              ),
            ],
          ),
          const Padding(padding: EdgeInsets.all(10)),
          Container(
            height: 114,
            color: Theme.of(context).colorScheme.onPrimary,
            child:  const Row(
              mainAxisAlignment: MainAxisAlignment.center,
                
                children: [
                  Padding(padding: EdgeInsets.all(90)),
                  Expanded(child: Text("Заголовок", style: TextStyles.boldHeadingStyle,)),
                  Expanded(child: Text("Показать дату начала", style: TextStyles.boldHeadingStyle)),
                  Expanded(child: Text("Вкладка", style: TextStyles.boldHeadingStyle)),
                  Expanded(child: Text("Отображать", style: TextStyles.boldHeadingStyle)),
                  Expanded(child: Text("Редактировать", style: TextStyles.boldHeadingStyle))
                ]
            ),
          )
        ],
      ),
    );
  }
}
