// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_review_app/data/models/freezed_models.dart';
import 'package:movie_review_app/modules/home_module/home_repository.dart';
import 'package:movie_review_app/shared/enums.dart';
import 'package:movie_review_app/shared/functions.dart';
import 'package:movie_review_app/shared/routes/app_pages.dart';
import 'package:movie_review_app/shared/routes/app_routes.dart';
import 'package:movie_review_app/modules/auth_module/auth_controller.dart';

class HomeController extends GetxController {
  late HomeRepository homeRepository;
  HomeController({required this.homeRepository});
  @override
  void onInit() async {
    super.onInit();
    await getMovies();
  }

  // Status
  final _status = RxStatus.empty().obs;
  RxStatus get status => _status.value;
  set status(RxStatus value) {
    _status.value = value;
  }

  //Navigation
  Map<String, IconData> bottomTabs = {
    "Home": Icons.home,
    "Search": Icons.search,
    "Add Movies": Icons.receipt_long_outlined,
  };

  var currentIndex = 0.obs;

  List<String> homePageChildRoutes = [
    Routes.homePage,
    Routes.searchPage,
    Routes.addMoviesPage,
  ];

  void changePage(int index) {
    currentIndex.value = index;
    Get.toNamed(homePageChildRoutes[index], id: 0);
  }

  // All Movies
  final movieList = <MovieModel>[].obs;
  // Upcoming Movies
  var upcomingMovies = <MovieModel>[].obs;
  // New Movies
  var newMovies = <MovieModel>[].obs;
  // Old Movies
  var oldMovies = <MovieModel>[].obs;
  // Selected Movies
  var selectedMovieDetail = MovieDetailModel().obs;
  // Searched Movies
  var searchedMovies = <MovieModel>[].obs;
  // All Movie Reviews
  final reviewList = <ReviewModel>[].obs;

  String? Title;
  String? Year;
  String? Runtime;
  String? Genre;
  String? Director;
  String? Writer;
  String? Actors;
  String? Plot;
  String? Language;
  String? Type;
  String? Poster;
  String? movie_id;
  String? user_id;
  String? comment;
  String? rating;
  Route<dynamic> onGenerateRoute(RouteSettings settings) =>
      AppPages.onGenerateHomeRoute(settings);

  Future getMovies() async {
    status = RxStatus.loading();
    try {
      await homeRepository.getAllMovie().then((value) => {
            {
              value.forEach((element) {
                int year = int.tryParse(element.Year!) ?? 2010;
                if (year >= 2023) {
                  upcomingMovies.add(element);
                } else if (year >= 2022 && year <= 2023) {
                  newMovies.add(element);
                } else if (year < 2015) {
                  oldMovies.add(element);
                }
              }),
              searchedMovies.value = value,
              movieList.value = value,
              status = RxStatus.success()
            }
          });
    } catch (e) {
      status = RxStatus.error();
    }
  }

  Future<void> registerMovies(MovieModel data) async {
    status = RxStatus.loading();

    await homeRepository.registerMovie(data).then(
      (registerMoviesResponse) {
        if (registerMoviesResponse) {
          status = RxStatus.success();
          toast("Success", "Movie added Successfully",
              type: ToastTypes.success);
          getMovies();
        } else {
          status = RxStatus.error();
        }
      },
      onError: (err) {
        status = RxStatus.error();
      },
    );
  }

  Future searchMovies(String title) async {
    if (title.length > 3) {
      status = RxStatus.loading();
      try {
        await homeRepository
            .searchMovie(FilterMoviesModel(title: title))
            .then((value) => {
                  searchedMovies.value = value,
                  status = RxStatus.success(),
                });
      } catch (e) {
        status = RxStatus.error();
      }
    }
  }

  void resetSearch() {
    searchedMovies.clear();
    searchedMovies.value = movieList;
  }

  Future selectMovie(String id) async {
    status = RxStatus.loading();
    try {
      await homeRepository.selectMovie(id).then((value) => {
            if (value != null)
              {
                selectedMovieDetail.value = value,
                getReviews(),
                Get.toNamed(Routes.detailPage),
                status = RxStatus.success()
              }
            else
              {status = RxStatus.error()}
          });
    } catch (e) {
      status = RxStatus.error();
    }
  }

  Future getReviews() async {
    status = RxStatus.loading();
    try {
      await homeRepository
          .getReview(selectedMovieDetail.value.movieId!)
          .then((value) => {
                print(value),
                reviewList.value = value,
                ToastTypes.success,
                status = RxStatus.success()
              });
    } catch (e) {
      status = RxStatus.error();
    }
  }

  Future<void> addReview(ReviewModel review) async {
    var authController = Get.find<AuthController>();
    {
      if (authController.user != null) {
        status = RxStatus.loading();

        await homeRepository
            .addReview(review.copyWith(
          movie_id: selectedMovieDetail.value.movieId,
          user_id: Get.find<AuthController>().user!.userId,
        ))
            .then(
          (addReviewResponse) async {
            if (addReviewResponse) {
              status = RxStatus.success();
              await getReviews();
              Get.back();
            } else {
              status = RxStatus.error();
            }
          },
          onError: (err) {
            status = RxStatus.error();
          },
        );
      } else {}
    }
  }
}
