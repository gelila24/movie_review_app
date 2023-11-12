import 'package:get/get.dart';
import 'package:movie_review_app/core/repositories/home_repository.dart';
import 'package:movie_review_app/ui/controllers/home_controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<HomeRepository>(HomeRepository(apiClient: Get.find()));
    Get.put<HomeController>(HomeController(
      homeRepository: Get.find(),
    ));
  }
}
