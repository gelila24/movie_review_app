import 'package:connectivity/connectivity.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:movie_review_app/core/repositories/auth_repository.dart';
import 'package:movie_review_app/core/repositories/home_repository.dart';
import 'package:movie_review_app/core/services/api/api_client.dart';
import 'package:movie_review_app/ui/controllers/auth_controller.dart';
import 'package:movie_review_app/ui/controllers/home_controller.dart';

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
