import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_review_app/core/models/freezed_models.dart';
import 'package:movie_review_app/shared/themes/app_theme.dart';
import 'package:movie_review_app/ui/controllers/home_controller.dart';

class NewCard extends GetWidget<HomeController> {
  const NewCard({super.key, required this.movieModel});
  final MovieModel movieModel;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        controller.selectMovie(movieModel.movieId!);
      },
      child: Container(
        width: 170,
        height: 270,
        margin: const EdgeInsets.only(left: 10),
        decoration: AppTheme.movieCardDecoration(),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.network(
                movieModel.Poster!,
                width: 179,
                height: 180,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              child: Align(
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      movieModel.Title!,
                      style: AppTheme.normalLight(),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      movieModel.Type!,
                      style: AppTheme.greyStyle(),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Text(
                          'Released in ',
                          style: AppTheme.greyStyle(),
                        ),
                        Text(
                          movieModel.Year!,
                          style: AppTheme.bodyWhite()
                              .copyWith(color: Colors.amberAccent),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
