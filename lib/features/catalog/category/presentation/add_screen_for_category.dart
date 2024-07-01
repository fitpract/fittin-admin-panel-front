import 'dart:io';

import 'package:auto_route/annotations.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get_it/get_it.dart';
import 'package:http_parser/http_parser.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../core/data/service/secure_storage.dart';
import '../data/service/category_api_client.dart';
import '../domain/models/category_request.dart';

@RoutePage()
class AddScreenForCategory extends StatefulWidget {
  const AddScreenForCategory({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _AddScreenForCategoryState();
}

class _AddScreenForCategoryState extends State<AddScreenForCategory> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _sortOrderController = TextEditingController();
  int? _selectedParentId;
  File? _selectedImage;

  final CategoryApiClient apiClient = GetIt.instance.get<CategoryApiClient>();
  final SecureStorageService secureStorageService =
  GetIt.instance.get<SecureStorageService>();

  void _addCategory() async {
    String name = _nameController.text.trim();
    int sortOrder = int.tryParse(_sortOrderController.text.trim()) ?? 0;

    if (name.isEmpty) {
      Fluttertoast.showToast(msg: 'Please enter a name for the category');
      return;
    }

    if (_selectedParentId == null) {
      Fluttertoast.showToast(msg: 'Please select a parent category');
      return;
    }

    // Get access token from SecureStorageService
    String? accessToken = await secureStorageService.getToken();

    if (accessToken == null) {
      Fluttertoast.showToast(msg: 'Access token not found');
      return;
    }

    // Convert File to MultipartFile
    MultipartFile? imageFile;
    if (_selectedImage != null) {
      String fileName = _selectedImage!.path.split('/').last;
      imageFile = await MultipartFile.fromFile(
        _selectedImage!.path,
        filename: fileName,
        contentType: MediaType('image', 'jpeg'), // Adjust content type as needed
      );
    }

    CategoryRequest categoryRequest = CategoryRequest(
      name: name,
      sortOrder: sortOrder,
      parentId: _selectedParentId!,
      image: imageFile,
    );

    try {
      // Send request to server to create a new category
      await apiClient.addCategory(categoryRequest);

      Fluttertoast.showToast(msg: 'Category created successfully');
      // Optionally: Navigate to previous screen
      Navigator.of(context).pop();
    } catch (e) {
      Fluttertoast.showToast(msg: 'Failed to create category: $e');
    }
  }

  Future<void> _pickImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _selectedImage = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Добавить категорию'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 31),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Row(
                children: [
                  SizedBox(
                    width: 140,
                    child: Text('Название категории'),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        border: Border.all(
                          color: Colors.grey,
                          width: 1,
                        ),
                      ),
                      child: TextField(
                        controller: _nameController,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(horizontal: 12),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  SizedBox(
                    width: 140,
                    child: Text('Порядок сортировки'),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        border: Border.all(
                          color: Colors.grey,
                          width: 1,
                        ),
                      ),
                      child: TextField(
                        controller: _sortOrderController,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(horizontal: 12),
                          border: InputBorder.none,
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              DropdownButtonFormField<int>(
                value: _selectedParentId,
                onChanged: (value) {
                  setState(() {
                    _selectedParentId = value;
                  });
                },
                decoration: const InputDecoration(labelText: 'Родительская категория'),
                items: const [
                  DropdownMenuItem<int>(
                    value: 1,
                    child: Text('Category 1'),
                  ),
                  DropdownMenuItem<int>(
                    value: 2,
                    child: Text('Category 2'),
                  ),
                  // Add more items as needed
                ],
              ),
              SizedBox(height: 20),
              _selectedImage != null
                  ? Image.file(
                _selectedImage!,
                height: 100,
              )
                  : SizedBox.shrink(),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: _pickImage,
                child: const Text('Pick Image'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _addCategory,
                child: const Text('Add Category'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
