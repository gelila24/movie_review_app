import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_review_app/shared/themes/app_theme.dart';
import 'package:movie_review_app/ui/controllers/home_controller.dart';
import 'package:movie_review_app/ui/widgets/ModalProgressHUD.dart';
import 'package:movie_review_app/ui/widgets/custom_app_bar.dart';
import 'package:movie_review_app/ui/widgets/movie_cards.dart';

class SearchPage extends StatelessWidget {
  SearchPage({super.key});
  final HomeController homeController = Get.find();
  final TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Scaffold(
            body: Column(
              children: [
                const CustomAppBar(),
                Container(
                  height: 60,
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: AppTheme.darkGrey,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.search,
                        color: AppTheme.offWhite,
                        size: 30,
                      ),
                      Container(
                        width: 300,
                        margin: const EdgeInsets.only(left: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: TextFormField(
                                style: const TextStyle(color: AppTheme.white),
                                controller: _searchController,
                                onChanged: (newValue) async {
                                  await homeController.searchMovies(newValue);
                                },
                                decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Search",
                                    hintStyle:
                                        TextStyle(color: AppTheme.offWhite)),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: IconButton(
                                onPressed: () {
                                  _searchController.clear();
                                  homeController.resetSearch();
                                },
                                icon: const Icon(Icons.close),
                                color: AppTheme.offWhite,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Expanded(
                  child: Obx(
                    () {
                      return ListView.builder(
                        itemCount: homeController.searchedMovies.length,
                        itemBuilder: (context, index) {
                          return MovieCard(
                              movieModel: homeController.searchedMovies[index]);
                        },
                      );
                    },
                  ),
                )
              ],
            ),
          ),
          Obx(() => ModalProgressHUD(
              inAsyncCall: homeController.status.isLoading,
              child: const SizedBox()))
        ],
      ),
    );
  }
}
