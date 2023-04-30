import 'package:flutter/material.dart';
import 'package:flutter_delivery_food/shared/auth/auth_controller.dart';

class ProfileController {
  final authController = AuthController();
  Future<void> logoutUser(BuildContext context) async {
    try {
      authController.logoutUser(context);
      print('logout');
    } catch (error) {
      print(error);
    }
  }
}
