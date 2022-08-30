import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class TrainerProfileCard extends StatelessWidget {
  TrainerProfileCard({
    Key? key,
    required this.avatar,
    required this.fullName,
    required this.username,
    // required this.rating,
  }) : super(key: key);

  final String avatar;
  final String fullName;
  final String username;
  // final String rating;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[100],
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
                    style: const TextStyle(
                      color: Color.fromARGB(255, 42, 42, 42),
                      fontSize: 20.5,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    username,
                    style: const TextStyle(
                      color: Color(0xFF4c4c4c),
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  // *************** WILL CHANGE LATER ********************************
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RatingBar(
                        glow: false,
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
                        onRatingUpdate: (rating) {},
                      ),
                      Text(
                        "4.55",
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
