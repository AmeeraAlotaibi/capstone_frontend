import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WorkoutBox extends StatelessWidget {
  WorkoutBox({
    Key? key,
    required this.bgColor,
    required this.color,
    required this.title,
    required this.icon,
  }) : super(key: key);
  final String title;
  final FaIcon icon;
  final Color bgColor;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: bgColor,
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
            style: TextStyle(color: color, fontSize: 11.5),
          ),
        ],
      ),
    );
  }
}
