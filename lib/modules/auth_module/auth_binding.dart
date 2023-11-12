import 'package:connectivity/connectivity.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:movie_review_app/data/services/api/api_client.dart';
import 'package:movie_review_app/modules/auth_module/auth_repository.dart';
import 'package:movie_review_app/modules/home_module/home_repository.dart';
import 'package:movie_review_app/modules/auth_module/auth_controller.dart';
import 'package:movie_review_app/modules/home_module/home_controller.dart';

class AuthBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Dio(), fenix: true);
    Get.lazyPut(() => Connectivity(), fenix: true);
    Get.lazyPut(() => ApiClient(dio: Get.find(), connectivity: Get.find()),
        fenix: true);
    Get.put<AuthRepository>(AuthRepository(apiClient: Get.find()));
    Get.put<AuthController>(AuthController(
      authRepository: Get.find(),
    ));
    Get.put<HomeRepository>(HomeRepository(apiClient: Get.find()));
    Get.put<HomeController>(HomeController(
      homeRepository: Get.find(),
    ));
  }
}
