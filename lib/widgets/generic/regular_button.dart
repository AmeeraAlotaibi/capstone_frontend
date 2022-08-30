import 'package:flutter/material.dart';

// CANCEL BUTTON
class GenericButton extends StatelessWidget {
  const GenericButton({
    Key? key,
    required this.onPressed,
    required this.buttonText,
    required this.width,
  }) : super(key: key);

  final VoidCallback onPressed;
  final String buttonText;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(buttonText),
        style: ElevatedButton.styleFrom(
          primary: Colors.redAccent,
          elevation: 0,
          textStyle: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
