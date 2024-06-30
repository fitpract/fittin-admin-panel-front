import 'package:fittin_admin_panel/core/style/theme/theme_colors.dart';
import 'package:flutter/material.dart';

class ShowcaseElement extends StatefulWidget {
  const ShowcaseElement({super.key});

  @override
  State<ShowcaseElement> createState() => _ShowcaseElementState();
}

class _ShowcaseElementState extends State<ShowcaseElement> {
  bool light = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 114,
      color: Theme.of(context).colorScheme.surface,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(padding: EdgeInsets.all(90)),
          Expanded(
              child: Text(
            "id:\nтип:\nКатегория: ",
            style: Theme.of(context).textTheme.bodyLarge,
          )),
          Expanded(
              child: Text(
            "2202.12.23.23.12:14",
            style: Theme.of(context).textTheme.bodyLarge,
          )),
          Expanded(
              child: Text(
            "Витрина ",
            style: Theme.of(context).textTheme.bodyLarge,
          )),
          Expanded(
              child: Container(
            alignment: Alignment.centerLeft,
            child: Switch(
              value: light,
              activeColor: Theme.of(context).colorScheme.primary,
              inactiveThumbColor: Theme.of(context).colorScheme.outlineVariant,
              onChanged: (bool value) {
                setState(() {
                  light = value;
                });
              },
            ),
          )),
          Expanded(
            child: Row(
              children: [
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    maximumSize: const Size(70, 70),
                    overlayColor: Theme.of(context).colorScheme.secondary,
                    side: BorderSide(
                      width: 1.0,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                    backgroundColor: Theme.of(context).colorScheme.surface,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    elevation: 0,
                  ),
                  onPressed: () {},
                  child: Icon(
                    Icons.edit,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    maximumSize: const Size(70, 70),
                    overlayColor: Theme.of(context).colorScheme.error,
                    side: BorderSide(
                      width: 1.0,
                      color: Theme.of(context).colorScheme.error,
                    ),
                    backgroundColor: Theme.of(context).colorScheme.surface,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    elevation: 0,
                  ),
                  onPressed: () {},
                  child: Icon(
                    Icons.delete_outline,
                    color: Theme.of(context).colorScheme.error,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
