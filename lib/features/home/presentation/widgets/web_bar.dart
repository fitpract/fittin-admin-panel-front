import 'package:fittin_admin_panel/features/home/presentation/bloc/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WebBar extends StatelessWidget implements PreferredSizeWidget {

  final HomeBloc bloc;

  const WebBar({super.key, required this.bloc});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      bloc: bloc,
      builder: (context, state) {
        return Container(
          height: 70,
          color: Theme.of(context).colorScheme.surface,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  state.expanded
                      ? SvgPicture.asset(
                          'lib/core/style/assets/fittin-large-logo.svg',
                          semanticsLabel: 'Fittin',
                          alignment: Alignment.centerLeft,
                          height: 47,
                        )
                      : Padding(
                          padding: const EdgeInsets.only(left: 12),
                          child: SvgPicture.asset(
                            'lib/core/style/assets/fittin-small-logo.svg',
                            semanticsLabel: 'Fittin',
                            alignment: Alignment.centerLeft,
                            height: 30,
                          ),
                        ),
                  const SizedBox(width: 10),
                  IconButton(
                    onPressed: () {
                      state.expanded
                          ? bloc.add(CollapseNavigationRailEvent())
                          : bloc.add(ExpandNavigationRailEvent());
                    },
                    icon: state.expanded
                        ? const Icon(Icons.arrow_back_ios_new_outlined)
                        : const Icon(Icons.arrow_forward_ios_outlined),
                  )
                ],
              ),
              Row(
                children: [
                  _searchField(context),
                  _iconButton(const Icon(Icons.account_circle_outlined), () {}),
                  _iconButton(const Icon(Icons.fullscreen), () {}),
                  _iconButton(const Icon(Icons.dark_mode_outlined), () {}),
                  _iconButton(const Icon(Icons.logout), () {}),
                ],
              )
            ],
          ),
        );
      },
    );
  }

  Widget _searchField(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        height: 35,
        width: 200,
        child: TextFormField(
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.search,
              size: 20,
              color: Theme.of(context).colorScheme.outline,
            ),
            hintText: 'Поиск',
            hintStyle: Theme.of(context).textTheme.bodySmall,
            filled: true,
            fillColor: const Color(0xFFF3F3F9),
            contentPadding: const EdgeInsets.all(10),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Theme.of(context).colorScheme.primary,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(32),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Color(0xFFECECEC),
                width: 2,
              ),
              borderRadius: BorderRadius.circular(32),
            ),
            /*border: OutlineInputBorder(
              */ /*borderSide: const BorderSide(
                color: Color(0xFFECECEC),
                width: 2,
              ),*/ /*
              borderRadius: BorderRadius.circular(32),
            ),*/
          ),
        ),
      ),
    );
  }

  Widget _iconButton(Icon icon, VoidCallback onPressed) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: IconButton(
        onPressed: onPressed,
        icon: icon,
      ),
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, 200);
}
