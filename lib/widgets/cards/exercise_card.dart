import 'package:flutter/material.dart';

class ExerciseCard extends StatelessWidget {
  const ExerciseCard({
    Key? key,
    required this.name,
    required this.image,
    required this.onTap,
    required this.trainer,
  }) : super(key: key);

  final String name;
  final String image;
  final String trainer;
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
              height: 175,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Theme.of(context).dividerColor,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(image),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              "  $name",
              style: const TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
           Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                 const SizedBox(
              width: 6,
            ),
                Text(
                  "by: $trainer",
                  style: TextStyle(
                    fontSize: 12,
                    color: Theme.of(context).canvasColor,
                  ),
                ),
                const SizedBox(
              width: 6,
            ),
                 const Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 15,
                ),
                const Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 15,
                ),
                const Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 15,
                ),
                const Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 15,
                ),
                const Icon(
                  Icons.star,
                  color: Colors.grey,
                  size: 15,
                ),
              ],
            ),
            // will be replace later
           
          ],
        ),
      ),
    );
  }
}
