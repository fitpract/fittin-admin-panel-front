
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryInfo extends StatefulWidget {
  CategoryInfo({super.key, required this.name, required this.idCategory, required this.count});
  late String name;
  late String idCategory;
  late String count;


  @override
  State<StatefulWidget> createState() => _CategoryInfoState(name: name, idCategory: idCategory, count: count);
}

class _CategoryInfoState extends State<CategoryInfo> {
  _CategoryInfoState({required this.name, required this.idCategory, required this.count});

  String name;
  String idCategory = " ";
  String count = " ";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(name),
        Text("ID категории: $idCategory"),
        Text("Наименование в категории: $count")
      ],
    );
  }
}
