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
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Hello there,",
                style: TextStyle(
                  fontSize: 20,
                  letterSpacing: 1,
                  color: Color.fromARGB(255, 184, 184, 184),
                ),
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
