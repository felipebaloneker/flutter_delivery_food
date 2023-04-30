import 'package:flutter/material.dart';
import 'package:flutter_delivery_food/shared/models/category_model.dart';

class ListCategoryController {
  final category = ValueNotifier<List<CategoryModel>>(<CategoryModel>[
    CategoryModel(name: 'Burger', icon: '🍔'),
    CategoryModel(name: 'Pizza', icon: '🍕'),
    CategoryModel(name: 'Sandwich', icon: '🌭'),
  ]);
}
