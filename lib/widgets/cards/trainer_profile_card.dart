
import 'package:capstone_frontend/models/trainer.dart';
import 'package:capstone_frontend/providers/trainer_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:provider/provider.dart';

class TrainerProfileCard extends StatelessWidget {
  TrainerProfileCard({
    Key? key,
    required this.avatar,
    required this.fullName,
    required this.username,
    required this.id,
    required this.rating,
    // required this.rating,
  }) : super(key: key);

  final String avatar;
  final String fullName;
  final String username;
  final int id;
  final double rating;
  // final String rating;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).dividerColor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          // avatar container
          Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(5),
                bottomLeft: Radius.circular(5),
              ),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(avatar),
              ),
            ),
          ),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    fullName,
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  Text(
                    username,
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  // *************** WILL CHANGE LATER ********************************
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RatingBar(
                        initialRating: rating,
                        glow: true,
                        itemSize: 17,
                        itemPadding: const EdgeInsets.all(0),
                        ratingWidget: RatingWidget(
                          full: const Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          half: const Icon(
                            Icons.star,
                            color: Colors.amberAccent,
                          ),
                          empty: const Icon(
                            Icons.star,
                            color: Colors.grey,
                          ),
                        ),
                        onRatingUpdate: (rating) async{
                          await context.read<TrainerProvider>().rate(id,rating);
                        },
                      ),
                      Text(
                        rating.toString(),
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
