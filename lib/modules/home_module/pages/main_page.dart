import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_review_app/modules/home_module/home_controller.dart';
import 'package:movie_review_app/widgets/custom_navigation.dart';

class MainPage extends StatelessWidget {
  MainPage({super.key});
  final HomeController _homeController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Navigator(
            key: Get.nestedKey(0),
            initialRoute: _homeController.homePageChildRoutes[0],
            onGenerateRoute: _homeController.onGenerateRoute,
          ),
        ],
      ),
      bottomNavigationBar: CustomBottomNavigation(),
    );
  }
}
