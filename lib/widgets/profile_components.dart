import 'package:flutter/material.dart';

// AVATAR COMPONENT
class ProfileAvatar extends StatelessWidget {
  ProfileAvatar({Key? key, required this.avatar}) : super(key: key);

  final String avatar;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 50,
      backgroundColor: Colors.grey[400],
      backgroundImage: NetworkImage(avatar),
    );
  }
}

class HorizontalLine extends StatelessWidget {
  const HorizontalLine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 5),
      width: double.infinity,
      height: 1,
      color: Colors.grey[200],
    );
  }
}

class DetailsRow extends StatelessWidget {
  DetailsRow({
    Key? key,
    required this.height,
    required this.age,
    required this.friends,
  }) : super(key: key);

  final String height;
  final String age;
  final String friends;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Text(
              "Height".toUpperCase(),
              style: TextStyle(
                color: Colors.grey[700],
                fontSize: 16,
              ),
            ),
            Text(
              "${height}cm",
              style: Theme.of(context).textTheme.headline6,
            ),
          ],
        ),
        Column(
          children: [
            Text(
              "Age".toUpperCase(),
              style: TextStyle(
                color: Colors.grey[700],
                fontSize: 16,
              ),
            ),
            Text(
              age,
              style: Theme.of(context).textTheme.headline6,
            ),
          ],
        ),
        Column(
          children: [
            Text(
              "Friends".toUpperCase(),
              style: TextStyle(
                color: Colors.grey[700],
                fontSize: 16,
              ),
            ),
            Text(
              friends,
              style: Theme.of(context).textTheme.headline6,
            ),
          ],
        ),
      ],
    );
  }
}
