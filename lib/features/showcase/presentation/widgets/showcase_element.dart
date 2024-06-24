
import 'package:fittin_admin_panel/features/showcase/domain/app_banner.dart';
import 'package:flutter/material.dart';

import '../../../../core/style/theme/theme_colors.dart';

class ShowcaseElement extends StatefulWidget {
  const ShowcaseElement({super.key, required this.banner});

  final AppBanner banner;

  @override
  State<ShowcaseElement> createState() => _ShowcaseElementState();
}

class _ShowcaseElementState extends State<ShowcaseElement> {
  bool light = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 114,
      color: Theme.of(context).colorScheme.onPrimary,
      child:
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(padding: EdgeInsets.all(90)),
          Expanded(
              child: Text(
                "${widget.banner.description}",
                style: Theme.of(context).textTheme.bodyLarge,
              )),
          Expanded(
              child: Text(
                "${widget.banner.id}",
                style: Theme.of(context).textTheme.bodyLarge,
              )),
          Expanded(
              child: Text(
                "Витрина ",
                style: Theme.of(context).textTheme.bodyLarge,
              )),
          Expanded(child: Container(
            alignment: Alignment.centerLeft,
            child: Switch(
              value: light,
              activeColor: Theme.of(context).colorScheme.primary,
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
                    overlayColor:
                    Theme.of(context).colorScheme.onPrimary,
                    side: const BorderSide(
                        width: 1.0,
                        color: AppColors.editButtonColor),
                    backgroundColor:
                    Theme.of(context).colorScheme.onPrimary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    elevation: 0,
                  ),
                  onPressed: () {},
                  child: const Icon(Icons.edit, color: AppColors.editButtonColor,),
                ),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    maximumSize: const Size(70, 70),
                    overlayColor:
                    Theme.of(context).colorScheme.onPrimary,
                    side: const BorderSide(
                        width: 1.0,
                        color: AppColors.deleteButtonColor),
                    backgroundColor:
                    Theme.of(context).colorScheme.onPrimary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    elevation: 0,
                  ),
                  onPressed: () {},
                  child: const Icon(Icons.delete_outline, color: AppColors.deleteButtonColor,),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
