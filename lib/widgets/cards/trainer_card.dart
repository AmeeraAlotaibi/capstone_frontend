import 'package:flutter/material.dart';

class TrainerCard extends StatelessWidget {
  const TrainerCard({
    Key? key,
    required this.trainer,
    required this.avatar,
    required this.onTap,
  }) : super(key: key);

  final String trainer;
  final String avatar;
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
          color: Colors.white,
          border: Border.all(
            color: const Color.fromARGB(255, 184, 184, 184),
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
                color: Colors.grey[200],
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
              children: const [
                SizedBox(
                  width: 6,
                ),
                Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 15,
                ),
                Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 15,
                ),
                Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 15,
                ),
                Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 15,
                ),
                Icon(
                  Icons.star,
                  color: Colors.grey,
                  size: 15,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "4.0",
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(0xFF4c4c4c),
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
