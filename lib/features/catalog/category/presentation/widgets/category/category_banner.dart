import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import '../../../../../../core/style/theme/theme_colors.dart';
import '../../../domain/models/category.dart';
import 'category_info.dart';
import 'category_manage_button.dart';
import '../../../data/service/category_api_client.dart';

class CategoryBanner extends StatelessWidget {
  final Category category;

  const CategoryBanner({Key? key, required this.category}) : super(key: key);

  Future<int> _fetchChildCategoryCount(int categoryId) async {
    final categoryApiClient = GetIt.instance.get<CategoryApiClient>();
    final response = await categoryApiClient.getCountOfChildCategories(categoryId);
    return response.count;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Container(
        height: 249,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 35, left: 35, right: 35),
          child: Stack(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 172,
                    width: 147,
                    color: AppColors.emptyBanner,
                    child: category.image != null ? Image.network(category.image!) : null,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: FutureBuilder<int>(
                      future: _fetchChildCategoryCount(category.id),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState == ConnectionState.waiting) {
                          return const CircularProgressIndicator();
                        } else if (snapshot.hasError) {
                          return Text('Error: ${snapshot.error}');
                        } else if (snapshot.hasData) {
                          return CategoryInfo(
                            count: snapshot.data!,
                            idCategory: category.id,
                            name: category.name,
                          );
                        } else {
                          return const Text('No data');
                        }
                      },
                    ),
                  ),
                ],
              ),
              const Positioned(
                top: 0,
                right: 0,
                child: CategoryManageButton(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
