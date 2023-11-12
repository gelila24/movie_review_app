import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_review_app/data/models/freezed_models.dart';
import 'package:movie_review_app/shared/themes/app_theme.dart';
import 'package:movie_review_app/modules/home_module/home_controller.dart';

class MovieCard extends GetWidget<HomeController> {
  const MovieCard({super.key, required this.movieModel});

  final MovieModel movieModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          margin: const EdgeInsets.only(bottom: 18),
          decoration: AppTheme.movieCardDecoration(
              color: AppTheme.green.withOpacity(0.1)),
          padding: const EdgeInsets.all(10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                      height: 100,
                      width: 100,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.network(
                          movieModel.Poster ?? "",
                          height: 100,
                          width: 80,
                          fit: BoxFit.cover,
                        ),
                      )),
                  const SizedBox(
                    width: 16,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: 50,
                                  child: Text(
                                    movieModel.Title ?? "",
                                    style: AppTheme.normalWhite()
                                        .copyWith(fontSize: 16),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  padding: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(60),
                                      color: Colors.greenAccent),
                                  child: Text(
                                    movieModel.Type ?? "",
                                    style: AppTheme.normalWhite()
                                        .copyWith(fontSize: 10),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            SizedBox(
                              width: 130,
                              child: Text(
                                movieModel.Plot ?? "",
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                                softWrap: false,
                                style: AppTheme.greyStyle(),
                              ),
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
                                  movieModel.Year ?? "",
                                  style: AppTheme.bodyWhite()
                                      .copyWith(color: Colors.amberAccent),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              GestureDetector(
                onTap: () {
                  controller.selectMovie(movieModel.movieId!);
                },
                child: Container(
                  decoration: AppTheme.borderedButton(),
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 12),
                  child: Row(
                    children: [
                      Text(
                        "Details",
                        style: AppTheme.normalLight()
                            .copyWith(color: AppTheme.green, fontSize: 10),
                      ),
                      const Icon(
                        Icons.arrow_forward,
                        color: AppTheme.green,
                        size: 12,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
