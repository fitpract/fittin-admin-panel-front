import 'package:fittin_admin_panel/core/style/theme/bloc/theme_bloc.dart';
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
          child: BlocBuilder<ThemeBloc, ThemeState>(
              builder: (context, themeState) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    state.expanded
                        ? const SizedBox(width: 40)
                        : const SizedBox(width: 12),
                    state.expanded
                        ? themeState.themeMode == ThemeMode.light
                            ? Image.asset(
                                'lib/core/style/assets/fittin-large-logo-light.png',
                                alignment: Alignment.centerLeft,
                                height: 30,
                              )
                            : Image.asset(
                                'lib/core/style/assets/fittin-large-logo-dark.png',
                                alignment: Alignment.centerLeft,
                                height: 30,
                              )
                        : Image.asset(
                            'lib/core/style/assets/fittin-small-logo.png',
                            alignment: Alignment.centerLeft,
                            height: 30,
                          ),
                    state.expanded
                        ? const SizedBox(width: 60)
                        : const SizedBox(width: 10),
                    IconButton(
                      onPressed: () {
                        state.expanded
                            ? bloc.add(CollapseNavigationRailEvent())
                            : bloc.add(ExpandNavigationRailEvent());
                      },
                      icon: Icon(
                        state.expanded
                            ? Icons.arrow_back_ios_new_outlined
                            : Icons.arrow_forward_ios_outlined,
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    _searchField(context),
                    _iconButton(
                      Icons.account_circle_outlined,
                      () {},
                      Theme.of(context).colorScheme.onBackground,
                    ),
                    _iconButton(
                      Icons.fullscreen,
                      () {},
                      Theme.of(context).colorScheme.onBackground,
                    ),
                    _iconButton(
                      themeState.themeMode == ThemeMode.light
                          ? Icons.dark_mode_outlined
                          : Icons.light_mode_outlined,
                      () {
                        themeState.themeMode == ThemeMode.light
                            ? context.read<ThemeBloc>().add(SetDarkThemeEvent())
                            : context
                                .read<ThemeBloc>()
                                .add(SetLightThemeEvent());
                      },
                      Theme.of(context).colorScheme.onBackground,
                    ),
                    _iconButton(
                      Icons.logout,
                      () {},
                      Theme.of(context).colorScheme.primary,
                    ),
                  ],
                )
              ],
            );
          }),
        );
      },
    );
  }

  Widget _searchField(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        height: 45,
        width: 180,
        child: TextFormField(
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.search,
              size: 20,
              color: Theme.of(context).colorScheme.onSurface,
            ),
            hintText: 'Поиск...',
            hintStyle: Theme.of(context).textTheme.bodySmall,
            filled: true,
            fillColor: Theme.of(context).colorScheme.surfaceContainer,
            contentPadding: const EdgeInsets.all(10),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Theme.of(context).colorScheme.outline,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(32),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Theme.of(context).colorScheme.outline,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(32),
            ),
          ),
        ),
      ),
    );
  }

  Widget _iconButton(IconData icon, VoidCallback onPressed, Color color) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(icon, color: color),
      ),
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, 200);
}
