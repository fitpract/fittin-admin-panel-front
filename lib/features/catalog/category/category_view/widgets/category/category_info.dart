import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:clipboard/clipboard.dart';


class CategoryInfo extends StatefulWidget {
  CategoryInfo(
      {super.key,
      required this.name,
      required this.idCategory,
      required this.count,
      required this.diplink});

  late final String name;
  late final String idCategory;
  late final String count;
  late final String diplink;

  @override
  State<StatefulWidget> createState() => _CategoryInfoState();
}

class _CategoryInfoState extends State<CategoryInfo> {
  @override
  void initState() {
    super.initState();
    name = widget.name;
    idCategory = widget.idCategory;
    count = widget.count;
    diplink = widget.diplink;
  }

  late final String name;
  late final String idCategory;
  late final String count;
  late final String diplink;

  @override
  Widget build(BuildContext context) {


    return Column(
      children: [
        Text(name),
        Text("ID категории: $idCategory"),
        Text("Наименование в категории: $count"),
        Row(
          children: [
            Text("Диплиник: $diplink"),
            IconButton(
                onPressed: () {
                  FlutterClipboard.copy(diplink);
                },
                icon: Icon(
                  Icons.copy_sharp,
                  color: Theme.of(context).colorScheme.outline,
                )),
          ],
        )
      ],
    );
  }
}
