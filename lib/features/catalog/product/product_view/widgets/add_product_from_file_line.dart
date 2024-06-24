import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:fittin_admin_panel/export_all_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddProductFromFileButton extends StatefulWidget {
  const AddProductFromFileButton({super.key});

  @override
  State<StatefulWidget> createState() =>
      _AddProductFromFileButtonState();
}

class _AddProductFromFileButtonState extends State<AddProductFromFileButton> {
  late File file;
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    controller.text = "Файл не выбран";
    return Row(
      children: [
        OutlinedButton(
            onPressed: () {
              context.read<ProductBloc>().add(LoadProductFromFileEvent(file: file));
            },
            child: const Text("Загрузить из файла")
        ),
        const SizedBox(width: 10),
        Container(
          width: 300,
          child: TextFormField(
            controller: controller,
            decoration: InputDecoration(
                labelText: "Выберите файл",
                border: const OutlineInputBorder(),
              icon: OutlinedButton(onPressed: (){
                FilePicker.platform.pickFiles().then((value) {
                  setState(() {
                    file = File(value!.files.single.path!);
                    controller.text = file.path;
                  });
                });
              }, child: const Text("Выберите файл"))

            ),
          ),
        )
      ],
    );
  }
}
