// a simple horizontal line
import 'package:flutter/material.dart';

class HorizontalDiv extends StatelessWidget {
  const HorizontalDiv({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      width: double.infinity,
      height: 1,
      color: Theme.of(context).dividerColor,
    );
  }
}

// vertical divider
class VerticalDiv extends StatelessWidget {
  const VerticalDiv({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1,
      height: 50,
      color: Theme.of(context).dividerColor,
    );
  }
}
