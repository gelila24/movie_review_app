import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_review_app/shared/themes/app_theme.dart';
import 'package:movie_review_app/ui/controllers/home_controller.dart';
import 'package:movie_review_app/ui/pages/add_review.dart';
import 'package:movie_review_app/ui/widgets/rate_and_review.dart';

class DetailPage extends GetWidget<HomeController> {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Obx(
        () => Scaffold(
          body: Stack(
            children: [
              Opacity(
                opacity: 0.4,
                child: Image.network(
                  controller.selectedMovieDetail.value.Poster ?? "",
                  height: 300,
                  width: Get.width,
                  fit: BoxFit.cover,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      color: AppTheme.white,
                      size: 30,
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: AppTheme.borderDecoration(),
                          child: Image.network(
                            controller.selectedMovieDetail.value.Poster ?? "",
                            height: 230,
                            width: 180,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 16, top: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    controller
                                            .selectedMovieDetail.value.Title ??
                                        "",
                                    style: AppTheme.mainTitle(),
                                  ),
                                  Text(
                                    controller.selectedMovieDetail.value.Year ??
                                        "",
                                    style: AppTheme.normal(),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Movie ",
                                    style: AppTheme.darkStyle(),
                                  ),
                                  Text(
                                    "Adventure/ Action",
                                    style: AppTheme.darkStyle(),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 20),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Overview",
                            style: AppTheme.mainTitle(),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            controller.selectedMovieDetail.value.Plot ?? "",
                            style: AppTheme.secondaryTitle(),
                          ),
                          const SizedBox(height: 15),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Rating and Reviews",
                                style: AppTheme.titleWhite(),
                              ),
                              IconButton(
                                onPressed: () {
                                  showDialog(
                                      context: context,
                                      builder: (context) =>
                                          AddRatingAndReview());
                                },
                                icon: const Icon(
                                  Icons.reviews,
                                  color: AppTheme.white,
                                ),
                              )
                            ],
                          ),
                        ]),
                  ),
                  if (controller.reviewList.length == 0)
                    Center(
                      child: Column(
                        children: [
                          Text(
                            "No Ratings and Reviews",
                            style: AppTheme.primaryStyle(),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Add Your Ratings and Reviews",
                            style: AppTheme.hintLightTextStyle(),
                          ),
                        ],
                      ),
                    ),
                  Expanded(
                      child: Obx(
                    () => ListView.builder(
                      itemCount: controller.reviewList.length,
                      itemBuilder: (context, index) {
                        return RateAndReviewCard(
                          reviewModel: controller.reviewList[index],
                        );
                      },
                    ),
                  )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
