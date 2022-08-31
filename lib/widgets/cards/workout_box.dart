import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WorkoutBox extends StatelessWidget {
  WorkoutBox({
    Key? key,
    required this.title,
    required this.icon,
  }) : super(key: key);
  final String title;
  final FaIcon icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon,
          const SizedBox(
            height: 5.5,
          ),
          Text(
            title,
            style: TextStyle(
              color: Theme.of(context).canvasColor,
              fontSize: 11.5,
            ),
          ),
        ],
      ),
    );
  }
}
