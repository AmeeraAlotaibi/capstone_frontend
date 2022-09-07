import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NothingHere extends StatelessWidget {
  const NothingHere({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FaIcon(
            FontAwesomeIcons.ban,
            color: Theme.of(context).dividerColor,
            size: 55,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "There's nothing to see here",
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ],
      ),
    );
  }
}
