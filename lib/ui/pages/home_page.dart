import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_review_app/shared/themes/app_theme.dart';
import 'package:movie_review_app/ui/controllers/home_controller.dart';
import 'package:movie_review_app/ui/widgets/ModalProgressHUD.dart';
import 'package:movie_review_app/ui/widgets/custom_app_bar.dart';
import 'package:movie_review_app/ui/widgets/new_card.dart';
import 'package:movie_review_app/ui/widgets/upcoming_card.dart';

class HomePage extends GetWidget<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Scaffold(
              body: SingleChildScrollView(
            child: Column(
              children: [
                const CustomAppBar(),
                const SizedBox(height: 25),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Upcoming Movies',
                    style: AppTheme.normalLight(),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 160,
                  child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: controller.upcomingMovies.length,
                      itemBuilder: (BuildContext context, int index) {
                        return UpcomingCard(
                            movieModel: controller.upcomingMovies[index]);
                      }),
                ),
                const SizedBox(height: 40),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'New Release',
                    style: AppTheme.normalLight(),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 300,
                  child: Obx(
                    () => ListView.builder(
                        itemCount: controller.newMovies.length,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.all(5),
                            child: NewCard(
                              movieModel: controller.newMovies[index],
                            ),
                          );
                        }),
                  ),
                ),
                const SizedBox(height: 40),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Oldies But Goodies',
                    style: AppTheme.normalLight(),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 300,
                  child: Obx(
                    () => ListView.builder(
                        itemCount: controller.oldMovies.length,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.all(5),
                            child: NewCard(
                              movieModel: controller.oldMovies[index],
                            ),
                          );
                        }),
                  ),
                ),
                const SizedBox(
                  height: 50,
                )
              ],
            ),
          )),
          Obx(() => ModalProgressHUD(
              inAsyncCall: controller.status.isLoading,
              child: const SizedBox()))
        ],
      ),
    );
  }
}
