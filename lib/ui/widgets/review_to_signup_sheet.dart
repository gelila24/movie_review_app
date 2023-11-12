import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_review_app/shared/routes/app_routes.dart';
import 'package:movie_review_app/shared/themes/app_theme.dart';
import 'package:movie_review_app/ui/controllers/auth_controller.dart';
import 'package:movie_review_app/ui/widgets/rounded_button.dart';

class ReviewToSignupSheet extends StatelessWidget {
  const ReviewToSignupSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      scrollable: true,
      shadowColor: AppTheme.primaryColor,
      elevation: 10,
      backgroundColor: AppTheme.secondaryColor.withOpacity(0.8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      contentPadding: const EdgeInsets.only(
        left: 16,
        right: 16,
      ),
      content: Column(
        children: [
          Image.asset(
            'assets/images/logo.png',
            width: 50,
            height: 50,
          ),
          Text(
            "You have to register to leave a review",
            style: AppTheme.titleWhite(),
          ),
          const SizedBox(
            height: 40,
          ),
          RoundedButton(
              text: "Register",
              onPressed: () async {
                Get.toNamed(Routes.registerUserPage);
                Get.find<AuthController>().isSigningFromReview = true;
              }),
        ],
      ),
    );
  }
}
