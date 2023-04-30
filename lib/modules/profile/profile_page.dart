import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_delivery_food/modules/profile/profile_controller.dart';
import 'package:flutter_delivery_food/shared/models/user_model.dart';
import 'package:flutter_delivery_food/shared/themes/app_colors.dart';
import 'package:flutter_delivery_food/shared/themes/app_text_styles.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({
    super.key,
  });

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final controller = ProfileController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(152),
        child: Container(
          height: 152,
          color: AppColors.primary,
          child: Center(
            child: ListTile(
              title: Text.rich(
                TextSpan(text: "Felipe"),
              ),
              trailing: Container(
                  height: 48,
                  width: 48,
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      shape: BoxShape.circle,
                      image: DecorationImage(image: NetworkImage('')))),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          InkWell(
            onTap: () {
              controller.logoutUser(context);
            },
            child: Column(
              children: [
                Container(
                  width: size.width,
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  child: Text(
                    'Logout',
                    textAlign: TextAlign.left,
                    style: AppTextStyles.buttonGray,
                  ),
                ),
                Container(height: 1, color: AppColors.stroke)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
