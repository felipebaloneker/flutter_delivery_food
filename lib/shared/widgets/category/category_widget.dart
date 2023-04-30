import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_delivery_food/shared/models/category_model.dart';
import 'package:flutter_delivery_food/shared/themes/app_colors.dart';
import 'package:flutter_delivery_food/shared/themes/app_text_styles.dart';

class CategoryWidget extends StatelessWidget {
  final CategoryModel data;
  const CategoryWidget({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 123,
        height: 40,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppColors.shape,
            border: Border.all(
              width: 1,
              color: AppColors.primary,
            )),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(data.icon, style: AppTextStyles.bodyCategory),
            Text(
              data.name,
              style: AppTextStyles.bodyCategoryGrey,
            ),
          ],
        ),
      ),
    );
  }
}
