import 'package:get/get.dart';
import 'package:movie_review_app/core/models/freezed_models.dart';
import 'package:movie_review_app/core/repositories/auth_repository.dart';
import 'package:movie_review_app/shared/routes/app_routes.dart';

class AuthController extends GetxController {
  final AuthRepository authRepository;

  AuthController({
    required this.authRepository,
  });

  // Status
  final _status = RxStatus.empty().obs;
  RxStatus get status => _status.value;
  set status(RxStatus value) {
    _status.value = value;
  }

  final Rx<UserModel?> _user = UserModel().obs;
  UserModel? get user =>
      _user.value != null ? authRepository.user : _user.value;
  set user(UserModel? value) {
    _user.value = value;
  }

  bool isSigningFromReview = false;

  Future register(String username, String email) async {
    status = RxStatus.loading();
    print("object");
    await authRepository.register(username, email).then(
      (value) {
        print(value);

        if (value) {
          user = authRepository.user;
          isSigningFromReview ? Get.back() : Get.toNamed(Routes.mainPage);
          status = RxStatus.success();
        } else {
          status = RxStatus.error();
        }
      },
    );
  }
}
