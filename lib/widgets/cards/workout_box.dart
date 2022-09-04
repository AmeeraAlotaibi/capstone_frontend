import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WorkoutBox extends StatelessWidget {
  WorkoutBox({
    Key? key,
    required this.title,
    required this.icon,
    required this.onTap,

  }) : super(key: key);
  final String title;
  final FaIcon icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      splashColor: Colors.white.withOpacity(0.5),
      highlightColor: Colors.black.withOpacity(0.5),
      child: Ink(
        width: 80,
        height: 80,
        // padding: const EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
          border: Border.all(
            color: Theme.of(context).dividerColor,
            width: 1,
          ),
        ),
      child: Container(
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
      ),
    ));
  }
}
