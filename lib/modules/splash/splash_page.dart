import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_delivery_food/shared/app_images.dart';
import 'package:flutter_delivery_food/shared/themes/app_colors.dart';
import 'package:flutter_delivery_food/shared/themes/app_text_styles.dart';

import '../../shared/auth/auth_controller.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    final authController = AuthController();
    authController.currentUser(context);
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AppImages.background),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 40,
              left: 0,
              right: 22,
              child: Image.asset(
                AppImages.chef,
                width: 311,
                height: 372,
              ),
            ),
            Positioned(
                bottom: size.height * 0.20,
                left: 0,
                right: 0,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 41),
                  child: Container(
                    height: 372,
                    decoration: BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Column(children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 11, vertical: 10),
                        child: Text(
                          "We will make your stomach full and healthy",
                          style: AppTextStyles.titleHome,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 11),
                        child: Text(
                          "All the best restaurants with their top menu waiting for you, they can’t wait for your order!",
                          style: AppTextStyles.trailingHome,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: Container(
                          width: 94,
                          height: 94,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: Icon(
                            Icons.arrow_forward,
                            color: AppColors.primary,
                          ),
                        ),
                      )
                    ]),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
