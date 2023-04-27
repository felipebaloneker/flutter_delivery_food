import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_delivery_food/shared/app_images.dart';
import 'package:flutter_delivery_food/shared/themes/app_colors.dart';

class SocialLoginButton extends StatelessWidget {
  final VoidCallback onTap;
  const SocialLoginButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
          height: 94,
          decoration: BoxDecoration(
              color: AppColors.shape,
              shape: BoxShape.circle,
              border:
                  Border.fromBorderSide(BorderSide(color: AppColors.stroke))),
          child: Image.asset(AppImages.google)),
    );
  }
}
