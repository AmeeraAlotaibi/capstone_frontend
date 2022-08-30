import 'package:flutter/material.dart';

// section Headings with leading icon and optional trailing widget of choice
class SectionHeadings extends StatelessWidget {
  const SectionHeadings({
    Key? key,
    required this.icon,
    required this.heading,
    this.trailing,
  }) : super(key: key);

  final Icon icon;
  final String heading;
  final Widget? trailing;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 35),
      child: Row(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                icon,
                const SizedBox(
                  width: 10,
                ),
                Text(
                  heading,
                  textAlign: TextAlign.left,
                  style: Theme.of(context).textTheme.headline6,
                ),
              ],
            ),
          ),
          if (trailing != null) trailing!,
        ],
      ),
    );
  }
}
