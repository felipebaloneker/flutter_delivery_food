import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_delivery_food/shared/models/Category_model.dart';
import 'package:flutter_delivery_food/shared/widgets/category/category_widget.dart';
import 'package:flutter_delivery_food/shared/widgets/list_category/list_category_controller.dart';

class ListCategory extends StatefulWidget {
  const ListCategory({super.key});

  @override
  State<ListCategory> createState() => _ListCategoryState();
}

class _ListCategoryState extends State<ListCategory> {
  final controller = ListCategoryController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: ValueListenableBuilder(
          valueListenable: controller.category,
          builder: (_, category, __) => Row(
            children: category.map((e) => CategoryWidget(data: e)).toList(),
          ),
        ));
  }
}
