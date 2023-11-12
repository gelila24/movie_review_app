import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_review_app/shared/themes/app_theme.dart';
import 'package:movie_review_app/modules/auth_module/auth_controller.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({super.key});

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  AuthController authController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Hello ${authController.user?.username ?? 'Guys'} ",
                  style: AppTheme.mainHeader()),
              Text("What to watch?", style: AppTheme.secondaryTitle())
            ],
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Image.asset(
              "assets/images/profile.jpeg",
              height: 60,
              width: 60,
            ),
          )
        ],
      ),
    );
  }
}
