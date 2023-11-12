import 'package:flutter/material.dart';
import 'package:movie_review_app/core/models/freezed_models.dart';

class UpcomingCard extends StatelessWidget {
  const UpcomingCard({super.key, required this.movieModel});
  final MovieModel movieModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Image.network(
          movieModel.Poster ?? "",
          width: 250,
          height: 150,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
