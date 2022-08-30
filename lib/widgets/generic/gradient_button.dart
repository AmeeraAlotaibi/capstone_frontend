import 'package:flutter/material.dart';

// BUTTON GRADIENT BACKGROUND ------------------------------------------------------
class CustomButton extends StatelessWidget {
  CustomButton({
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
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Theme.of(context).primaryColor,
            Theme.of(context).secondaryHeaderColor,
          ],
        ),
        borderRadius: BorderRadius.circular(5),
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 13.5),
          primary: Colors.transparent,
          elevation: 0,
          textStyle: const TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
        ),
        child: Text(buttonText),
      ),
    );
  }
}
