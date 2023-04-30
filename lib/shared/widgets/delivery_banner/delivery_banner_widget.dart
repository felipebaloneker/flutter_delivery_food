import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_delivery_food/shared/app_images.dart';
import 'package:flutter_delivery_food/shared/themes/app_text_styles.dart';

class DeliveryBannerWidget extends StatelessWidget {
  const DeliveryBannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Image.asset(
          AppImages.banner,
          height: size.height,
          fit: BoxFit.cover,
        ),
        Positioned(
          right: 0,
          left: 0,
          bottom: 65,
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 50),
            child: Text.rich(TextSpan(
                text: "Order Your Favorite Food",
                style: AppTextStyles.titleHome)),
          ),
        )
      ],
    );
  }
}
