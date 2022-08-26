import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class WelcomeCard extends StatelessWidget {
  WelcomeCard({Key? key, required this.username, required this.avatar})
      : super(key: key);

  final String username;
  final String avatar;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                "Hello there,",
                style: Theme.of(context).textTheme.subtitle1,
              ),
              Text(
                username,
                style: Theme.of(context).textTheme.headline2,
              ),
            ],
          ),
          CircleAvatar(
            radius: 35,
            backgroundColor: Colors.grey[400],
            backgroundImage: NetworkImage(avatar),
          ),
        ],
      ),
    );
  }
}
