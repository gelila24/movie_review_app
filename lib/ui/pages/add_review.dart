import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:movie_review_app/core/models/freezed_models.dart';
import 'package:movie_review_app/ui/controllers/home_controller.dart';
import '../../shared/themes/app_theme.dart';
import '../widgets/custom_textfield.dart';
import '../widgets/rounded_button.dart';

class AddRatingAndReview extends GetWidget<HomeController> {
  AddRatingAndReview({Key? key}) : super(key: key);

  double _starController = 0.0;
  final TextEditingController _commentController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(builder: (context, setState) {
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
          content: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: IconButton(
                        onPressed: () {
                          Get.back();
                        },
                        icon: const Icon(Icons.close),
                        color: AppTheme.white,
                      ),
                    ),
                    Center(
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/logo.png',
                            width: 50,
                            height: 50,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            child: Text(
                              "Rating and Review",
                              style: AppTheme.titleWhite(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Reviews",
                            style:
                                AppTheme.normalWhite().copyWith(fontSize: 18),
                          ),
                        ),
                        RatingBar.builder(
                          initialRating: _starController,
                          minRating: 1,
                          direction: Axis.horizontal,
                          itemSize: 30,
                          itemCount: 5,
                          unratedColor: AppTheme.iconGrey,
                          itemPadding: const EdgeInsets.symmetric(vertical: 10),
                          itemBuilder: (context, _) => const Icon(
                            Icons.star,
                            color: AppTheme.primaryColor,
                          ),
                          onRatingUpdate: (rating) {
                            _starController = rating;
                          },
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomTextField(
                      label: "Comment",
                      hintText: "Please give us a comment :) ",
                      controller: _commentController,
                      keyboardType: TextInputType.name,
                      maxLines: 5,
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    RoundedButton(
                        text: "Add Review",
                        onPressed: () async {
                          if (_formKey.currentState!.validate()) {
                            await controller.addReview(ReviewModel(
                              comment: _commentController.text,
                              rating: _starController,
                            ));
                          }
                        }),
                    const SizedBox(
                      height: 30,
                    ),
                  ]),
            ),
          ));
    });
  }
}
