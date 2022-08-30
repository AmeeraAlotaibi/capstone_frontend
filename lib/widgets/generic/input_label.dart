import 'package:flutter/material.dart';

class InputLabel extends StatelessWidget {
  InputLabel({
    Key? key,
    required this.label,
    required this.widget,
  }) : super(key: key);
  final String label;
  final Widget widget;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            color: Color(0xFF4c4c4c),
            fontSize: 14,
          ),
        ),
        const SizedBox(
          height: 7.5,
        ),
        Flexible(
          fit: FlexFit.loose,
          child: widget,
        ),
      ],
    );
  }
}
