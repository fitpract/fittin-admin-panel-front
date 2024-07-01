import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../../../core/style/theme/theme_text_styles.dart';

class CategoryInfo extends StatefulWidget {
  const CategoryInfo({
    super.key,
    required this.name,
    required this.idCategory,
    required this.count,
  });

  final String name;
  final int idCategory;
  final int count;

  @override
  State<StatefulWidget> createState() => _CategoryInfoState();
}

class _CategoryInfoState extends State<CategoryInfo> {
  late final String name;
  late final int idCategory;
  late final int count;

  @override
  void initState() {
    super.initState();
    name = widget.name;
    idCategory = widget.idCategory;
    count = widget.count;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          name,
          textAlign: TextAlign.left,
          style: subhead,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Text(
            "ID категории: $idCategory",
            textAlign: TextAlign.left,
            style: bodyMedium,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 3),
          child: Text(
            "Наименование в категории: $count",
            textAlign: TextAlign.left,
            style: bodyMedium,
          ),
        ),
      ],
    );
  }
}
