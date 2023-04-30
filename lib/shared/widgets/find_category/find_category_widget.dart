import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_delivery_food/shared/themes/app_text_styles.dart';
import 'package:flutter_delivery_food/shared/widgets/list_category/list_category.dart';

class FindByCategory extends StatelessWidget {
  const FindByCategory({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Find by Category',
                style: AppTextStyles.titleCategory,
              ),
              Text("See All", style: AppTextStyles.trailingCategory)
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: ListCategory(),
        )
      ],
    );
  }
}
