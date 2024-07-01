import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:fittin_admin_panel/features/catalog/category/presentation/widgets/category/category_banner.dart';
import 'package:fittin_admin_panel/features/catalog/category/presentation/widgets/top_panel/top_panel.dart';
import 'package:fittin_admin_panel/core/utils/getIt.dart';

import '../data/service/category_api_client.dart';
import '../domain/models/category.dart';

@RoutePage()
class MainScreenForCategory extends StatefulWidget {
  const MainScreenForCategory({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MainScreenForCategoryState();
}

class _MainScreenForCategoryState extends State<MainScreenForCategory> {
  late Future<List<Category>> _categoryResponseFuture;

  @override
  void initState() {
    super.initState();
    _categoryResponseFuture = _fetchCategories();
  }

  Future<List<Category>> _fetchCategories() async {
    final categoryApiClient = getIt<CategoryApiClient>();
    return await categoryApiClient.getCategory();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 31),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const TopPanel(),
              FutureBuilder<List<Category>>(
                future: _categoryResponseFuture,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const CircularProgressIndicator();
                  } else if (snapshot.hasError) {
                    print(snapshot.error);
                    return Text('Error: ${snapshot.error}');
                  } else if (snapshot.hasData) {
                    return Column(
                      children: snapshot.data!.map((category) => CategoryBanner(category: category)).toList(),
                    );
                  } else {
                    return const Text('No categories found');
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
