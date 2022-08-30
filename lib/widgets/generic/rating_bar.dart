import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RateTrainer extends StatelessWidget {
  const RateTrainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RatingBar(
      maxRating: 5,
      allowHalfRating: true,
      itemSize: 15,
      ratingWidget: RatingWidget(
        full: const Icon(
          Icons.star,
          color: Colors.amber,
        ),
        half: const Icon(Icons.star),
        empty: const Icon(
          Icons.star,
          color: Colors.grey,
        ),
      ),
      onRatingUpdate: (rating) {
        // rating function here
      },
    );
  }
}
