import 'package:auto_route/auto_route.dart';
import 'package:fittin_admin_panel/features/showcase/presentation/widgets/showcase_element.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ShowcaseScreen extends StatefulWidget {
  const ShowcaseScreen({super.key});

  @override
  State<ShowcaseScreen> createState() => _ShowcaseScreenState();
}



final List<String> list = ['Баннер', 'ещё элемент', 'и ещё элемент'];

class _ShowcaseScreenState extends State<ShowcaseScreen> {

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
                      /// была ошибка
                      //overlayColor: Theme.of(context).colorScheme.background,
                      side: BorderSide(
                          width: 1.0,
                          color: Theme.of(context).colorScheme.primary),
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
                menuChildren: List<MenuItemButton>.generate(
                  3,
                  (int index) => MenuItemButton(
                    style: const ButtonStyle(),
                    onPressed: () {
                      if (index == 0) {
                        AutoRouter.of(context).pushNamed('/showcase/add_banner');
                      }
                    },
                    child: SizedBox(width: 165.0, child: Text(list[index])),
                  ),
                ),
                style: MenuStyle(
                  backgroundColor: WidgetStateProperty.all<Color>(Theme.of(context).colorScheme.primary),
                ),
              ),
            ],
          ),
          const Padding(padding: EdgeInsets.all(10)),
          Container(
            height: 114,
            color: Theme.of(context).colorScheme.surface,
            child:  Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(padding: EdgeInsets.all(90)),
                Expanded(
                    child: Text(
                  "Заголовок",
                  style: Theme.of(context).textTheme.titleLarge,
                )),
                Expanded(
                    child: Text("Показать дату начала",
                        style: Theme.of(context).textTheme.titleLarge)),
                Expanded(
                    child: Text("Вкладка", style: Theme.of(context).textTheme.titleLarge)),
                Expanded(
                    child:
                        Text("Отображать", style: Theme.of(context).textTheme.titleLarge)),
                Expanded(
                    child: Text("Редактировать",
                        style: Theme.of(context).textTheme.titleLarge))
              ],
            ),
          ),
          const Padding(padding: EdgeInsets.all(9)),
          Expanded(
            child: ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                return ShowcaseElement();
              },
            ),
          ),
        ],
      ),
    );
  }
}
