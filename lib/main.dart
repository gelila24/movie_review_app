import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:movie_review_app/shared/routes/app_pages.dart';
import 'package:movie_review_app/shared/routes/app_routes.dart';
import 'package:movie_review_app/shared/themes/app_theme.dart';
import 'package:movie_review_app/modules/auth_module/auth_binding.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: AppPages.pages,
      initialRoute: Routes.registerUserPage,
      initialBinding: AuthBinding(),
      theme: AppTheme.themeData,
    );
  }
}
