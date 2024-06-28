import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class GetFileLineWidget extends StatefulWidget {
  const GetFileLineWidget({super.key, required this.file});
  final File file;
  @override
  State<StatefulWidget> createState() => _GetFileLineWidgetState();
}

class _GetFileLineWidgetState extends State<GetFileLineWidget> {

  @override
  initState(){
    super.initState();
    file = widget.file;
  }

  late File file;
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    controller.text = "Файл не выбран";
    return Container(
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
    );
  }
}
