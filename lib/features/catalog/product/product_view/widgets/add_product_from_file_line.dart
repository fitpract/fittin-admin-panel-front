import 'dart:io';

import 'package:fittin_admin_panel/export_all_bloc.dart';
import 'package:fittin_admin_panel/features/catalog/product/product_view/widgets/get_file_line_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class _AddProductFromFileButtonState extends State<AddProductFromFileButton> {
  late File file;
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        OutlinedButton(
            onPressed: () {
              context.read<ProductBloc>().add(LoadProductFromFileEvent(file: file));
            },
            child: const Text("Загрузить из файла")
        ),
        const SizedBox(width: 10),
        GetFileLineWidget(file: file)
      ],
    );
  }
}

class AddProductFromFileButton extends StatefulWidget {
  const AddProductFromFileButton({super.key});

  @override
  State<StatefulWidget> createState() =>
      _AddProductFromFileButtonState();
}
