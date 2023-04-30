import 'package:flutter/material.dart';
import 'package:flutter_delivery_food/modules/delivery_menu/delivery_menu_page.dart';
import 'package:flutter_delivery_food/modules/profile/profile_page.dart';
import 'package:flutter_delivery_food/shared/models/user_model.dart';
import 'package:flutter_delivery_food/shared/themes/app_colors.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String userName = "";
  final controller = HomeController();
  final pages = [
    DeliveryMenuPage(
      key: UniqueKey(),
    ),
    Container(color: Colors.blue),
    Container(color: Colors.red),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[controller.currentPage],
      bottomNavigationBar: Container(
        height: 82,
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          IconButton(
            onPressed: () {
              controller.setPage(0);
              setState(() {});
            },
            icon: Icon(Icons.home_rounded,
                color: controller.currentPage == 0
                    ? AppColors.primary
                    : AppColors.body),
            iconSize: 26,
          ),
          IconButton(
            onPressed: () {
              controller.setPage(1);
              setState(() {});
            },
            icon: Icon(Icons.assessment_rounded,
                color: controller.currentPage == 1
                    ? AppColors.primary
                    : AppColors.body),
            iconSize: 26,
          ),
          IconButton(
            onPressed: () {
              controller.setPage(2);
              setState(() {});
            },
            icon: Icon(Icons.shopping_cart_rounded,
                color: controller.currentPage == 2
                    ? AppColors.primary
                    : AppColors.body),
            iconSize: 26,
          ),
          IconButton(
            onPressed: () {
              controller.setPage(3);
              setState(() {});
            },
            icon: Icon(Icons.person_rounded,
                color: controller.currentPage == 3
                    ? AppColors.primary
                    : AppColors.body),
            iconSize: 26,
          ),
        ]),
      ),
    );
  }
}
