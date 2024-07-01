import 'package:dio/dio.dart';
import 'package:fittin_admin_panel/core/data/service/product_API/api_product.dart';
import 'package:fittin_admin_panel/core/navigation/app_router.dart';
import 'package:fittin_admin_panel/core/style/theme/bloc/theme_bloc.dart';
import 'package:fittin_admin_panel/core/style/theme/theme.dart';
import 'package:fittin_admin_panel/core/data/service/product_data/product_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fittin_admin_panel/export_all_bloc.dart';

final _dio = Dio();

class Wrapper extends StatelessWidget {
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(create: (context) => HomeBloc()),
      BlocProvider(create: (context) => CategoryBloc()),
      BlocProvider(
        create: (context) => ProductBloc(
          repository: ProductRepositoryImpl(RestClientProduct(_dio)),
        ),
      ),
      BlocProvider(create: (context) => ThemeBloc()),
    ], child: const AdminPanelApp());
  }
}

class AdminPanelApp extends StatefulWidget {
  const AdminPanelApp({super.key});

  @override
  State<AdminPanelApp> createState() => _AdminPanelAppState();
}

class _AdminPanelAppState extends State<AdminPanelApp> {
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, state) {
        return MaterialApp.router(
          themeMode: state.themeMode,
          theme: lightTheme(),
          darkTheme: darkTheme(),
          routerConfig: _appRouter.config(),
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}
