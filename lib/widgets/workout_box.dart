import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WorkoutBox extends StatelessWidget {
  const WorkoutBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 75,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const FaIcon(
            FontAwesomeIcons.personRunning,
            size: 35,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            "Acrobatic",
            style:
                TextStyle(color: Theme.of(context).primaryColor, fontSize: 10),
          ),
        ],
      ),
    );
  }
}
