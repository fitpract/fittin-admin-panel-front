import 'dart:io';

import 'package:auto_route/annotations.dart';
import 'package:fittin_admin_panel/core/domain/model/catalog/product/product_model.dart';
import 'package:fittin_admin_panel/features/catalog/product/product_view/add_new_and_refactor_product/widgets/num_input_widget.dart';
import 'package:fittin_admin_panel/features/catalog/product/product_view/add_new_and_refactor_product/widgets/text_input_widget.dart';
import 'package:fittin_admin_panel/features/catalog/product/product_view/widgets/get_file_line_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/domain/model/catalog/category/category_model.dart';
import '../../product_bloc/product_bloc.dart';

@RoutePage()
class AddNewAndRefactorProductScreen extends StatefulWidget {
  AddNewAndRefactorProductScreen({super.key});
  final ProductModel productModel = ProductModel(sortingOrder: 0,rating: 0,/* image: File("")*/count:2, id: 0, name: 'box', description: 'box for text', brand: 'BX', price:999, category: CategoryModel.nullCategory());
  @override
  State<AddNewAndRefactorProductScreen> createState() => _AddNewAndRefactorProductScreenState();
}

class _AddNewAndRefactorProductScreenState extends State<AddNewAndRefactorProductScreen> {

  TextEditingController nameController = TextEditingController();
  TextEditingController brandController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  TextEditingController countController = TextEditingController();
  TextEditingController sortingOrderController = TextEditingController();

  late ProductModel productModel;

  @override
  void initState() {
    super.initState();
    productModel = widget.productModel;
    nameController.text = productModel.name;
    brandController.text = productModel.brand;
    descriptionController.text = productModel.description;
    priceController.text = productModel.price.toString();
    countController.text = productModel.count.toString();
    sortingOrderController.text = productModel.sortingOrder.toString();
  }


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Container(
        child: Column(
          children: [
            TextInputWidget(text: "Название товара: ",controller: nameController),
            TextInputWidget(text: "Описание: ", controller: descriptionController),
            TextInputWidget(text: "Бренд: ", controller: brandController),
            //TODO: добавить выбор категории
            //GetFileLineWidget(file: productModel.image),
            NumInputWidget(text: "Количество товара: ", controller: countController),
            NumInputWidget(text: "Цена: ", controller: priceController,),
            NumInputWidget(text: "Порядок сотрировки: ", controller: sortingOrderController),
            Row(
              children: [
                ElevatedButton(
                    onPressed: (){
                      context.read<ProductBloc>().add(CreateNewProductEvent(productModel: productModel));
                    },
                    child: const Text("Сохранить")
                ),
                ElevatedButton(onPressed: (){}, child: const Text("Отмена"))
              ],
            )
          ],
        ),
      )
    );
  }
}
