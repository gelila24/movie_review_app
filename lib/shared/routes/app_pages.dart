import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_review_app/shared/routes/app_routes.dart';
import 'package:movie_review_app/modules/home_module/pages/add_movies_page.dart';
import 'package:movie_review_app/modules/home_module/pages/detail_page.dart';
import 'package:movie_review_app/modules/home_module/pages/home_page.dart';
import 'package:movie_review_app/modules/home_module/pages/main_page.dart';
import 'package:movie_review_app/modules/auth_module/pages/register_user.dart';
import 'package:movie_review_app/modules/home_module/pages/search_page.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.registerUserPage,
      page: () => const RegisterUserPage(),
    ),
    GetPage(
      name: Routes.mainPage,
      page: () => MainPage(),
    ),
    GetPage(name: Routes.detailPage, page: () => const DetailPage())
  ];

  //nested routing
  static Route<dynamic> onGenerateHomeRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.homePage:
        return GetPageRoute(
          settings: settings,
          page: () => const HomePage(
            key: Key("0"),
          ),
          transition: Transition.cupertino,
        );
      case Routes.searchPage:
        return GetPageRoute(
          settings: settings,
          page: () => SearchPage(
            key: const Key("1"),
          ),
          transition: Transition.cupertino,
        );
      case Routes.addMoviesPage:
        return GetPageRoute(
          settings: settings,
          page: () => const AddMoviePage(
            key: Key("2"),
          ),
          transition: Transition.cupertino,
        );
      default:
        return GetPageRoute(
          settings: settings,
          page: () => const HomePage(
            key: Key("0"),
          ),
        );
    }
  }
}
