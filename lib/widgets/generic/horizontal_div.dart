// a simple horizontal line
import 'package:flutter/material.dart';

class HorizontalLine extends StatelessWidget {
  const HorizontalLine({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      width: double.infinity,
      height: 1,
      color: Colors.grey[200],
    );
  }
}
