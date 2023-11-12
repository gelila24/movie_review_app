import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:movie_review_app/data/models/freezed_models.dart';
import 'package:movie_review_app/shared/themes/app_theme.dart';
import 'package:movie_review_app/shared/functions.dart';

class RateAndReviewCard extends StatelessWidget {
  const RateAndReviewCard({super.key, required this.reviewModel});
  final ReviewModel reviewModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(bottom: 20),
      decoration: AppTheme.movieCardDecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundColor: AppTheme.offWhite,
                child: Text(getInitials("Anonymous"),
                    style: AppTheme.primaryStyle()),
              ),
              const SizedBox(width: 15),
              Text(
                "Anonymous",
                style: AppTheme.normalLight(),
              ),
            ],
          ),
          const SizedBox(height: 5),
          RatingBar.builder(
            initialRating: reviewModel.rating ?? 5,
            ignoreGestures: true,
            minRating: 1,
            direction: Axis.horizontal,
            itemSize: 15,
            itemCount: 5,
            unratedColor: AppTheme.iconGrey,
            itemPadding: const EdgeInsets.symmetric(vertical: 10),
            itemBuilder: (context, _) => const Icon(
              Icons.star,
              color: AppTheme.primaryColor,
            ),
            onRatingUpdate: (rating) {},
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            reviewModel.comment ?? "",
            style: AppTheme.secondaryTitle(),
            overflow: TextOverflow.ellipsis,
            maxLines: 3,
            softWrap: false,
          ),
        ],
      ),
    );
  }
}
