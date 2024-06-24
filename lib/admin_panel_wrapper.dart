import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'admin_panel_app.dart';
import 'features/catalog/category/category_bloc/category_bloc.dart';
import 'features/home/presentation/bloc/home_bloc.dart';
import 'features/showcase/presentation/showcase_bloc/showcase_bloc.dart';

class AdminPanelWrapper extends StatelessWidget {
  const AdminPanelWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(create: (context) => HomeBloc()),
      BlocProvider(create: (context) => CategoryBloc()),
      BlocProvider(create: (context) => ShowcaseBloc()..add(GetBannersEvent())),
    ], child: const AdminPanelApp());
  }
}
