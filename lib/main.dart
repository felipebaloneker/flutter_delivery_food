import 'package:flutter/material.dart';
import 'package:flutter_delivery_food/modules/home/home_page.dart';
import 'package:flutter_delivery_food/modules/login/login_page.dart';
import 'package:flutter_delivery_food/modules/splash/splash_page.dart';
import 'package:flutter_delivery_food/shared/themes/app_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Delivery Food',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        primaryColor: AppColors.primary,
      ),
      initialRoute: '/splash',
      routes: {
        "/splash": (context) => SplashPage(),
        "/login": (context) => LoginPage(),
        "/home": (context) => HomePage(),
      },
    );
  }
}
