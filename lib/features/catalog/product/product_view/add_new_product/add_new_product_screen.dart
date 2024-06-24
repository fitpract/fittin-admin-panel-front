import 'package:auto_route/annotations.dart';
import 'package:fittin_admin_panel/core/domain/model/catalog/product/product_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../../core/domain/model/catalog/category/category_model.dart';

@RoutePage()
class AddNewProductScreen extends StatefulWidget {
  AddNewProductScreen({super.key});
  final ProductModel productModel = ProductModel(sortingOrder: 0,rating: 0, images: [] ,count:2, id: 0, name: 'box', description: 'box for text', brand: 'BX', price:999, category: CategoryModel.nullCategory());
  @override
  State<AddNewProductScreen> createState() => _AddNewProductScreenState();
}

class _AddNewProductScreenState extends State<AddNewProductScreen> {

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
            Row(
              children: [
                Text("Название товара: "),
                Expanded(
                  child: TextFormField(
                    controller: nameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Text("Бренд: "),
                Expanded(
                  child: TextFormField(
                    controller: brandController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Text("Описание: "),
                Expanded(
                  child: TextFormField(
                    controller: descriptionController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Text("Ссылки на картинки\n(разделение через Enter): "),
                Expanded(
                  child: TextFormField(

                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Цена: "),
                SizedBox(
                  width: 700,
                  child: TextFormField(
                    controller: priceController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly
                    ],
                  ),
                )
              ],
            ),
            Row(
              children: [
                Text("Порядок сортировки: "),
                Expanded(
                  child: TextFormField(
                    controller: sortingOrderController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                ElevatedButton(
                    onPressed: (){},
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
