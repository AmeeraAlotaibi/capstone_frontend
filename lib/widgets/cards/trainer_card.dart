import 'package:capstone_frontend/providers/trainer_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:provider/provider.dart';

class TrainerCard extends StatelessWidget {
  const TrainerCard({
    Key? key,
    required this.trainer,
    required this.avatar,
    required this.id,
    required this.rating,
    required this.onTap,
  }) : super(key: key);

  final String trainer;
  final String avatar;
  final int id;
  final double rating;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      splashColor: Colors.white.withOpacity(0.5),
      highlightColor: Colors.black.withOpacity(0.5),
      child: Ink(
        width: 150,
        padding: const EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
          border: Border.all(
            color: Theme.of(context).dividerColor,
            width: 1,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 150,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Theme.of(context).dividerColor,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(avatar),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              "  $trainer",
              style: const TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            // will be replace later
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  width: 6,
                ),
               
                
                 RatingBar(
                        initialRating: rating,
                        glow: true,
                        itemSize: 15,
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
                      SizedBox(
                  width: 5,
                ),
                Text(
                  rating.toString(),
                  style: TextStyle(
                    fontSize: 12,
                    color: Theme.of(context).canvasColor,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
