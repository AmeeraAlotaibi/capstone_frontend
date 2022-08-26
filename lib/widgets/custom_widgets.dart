import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

// INPUT FIELD ------------------------------------------
class CustomInputField extends StatelessWidget {
  CustomInputField({
    Key? key,
    required this.controller,
    required this.hintText,
    this.icon,
    required this.hiddenText,
    required this.width,
  }) : super(key: key);

  final TextEditingController controller;
  final String hintText;
  final Icon? icon;
  final bool hiddenText;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      child: TextFormField(
        controller: controller,
        obscureText: hiddenText,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 15),
          hintText: hintText,
          prefixIcon: icon,
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderSide: BorderSide(
              width: 1,
              color: Color.fromARGB(96, 71, 71, 71),
            ),
            borderRadius: BorderRadius.circular(5),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 2,
              color: Theme.of(context).primaryColor,
            ),
            borderRadius: BorderRadius.circular(5),
          ),
        ),
      ),
    );
  }
}

// BUTTON ------------------------------------------------------
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
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(buttonText),
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 13.5),
          primary: Theme.of(context).primaryColor,
          elevation: 0,
          textStyle: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

// TEXT BUTTON --------------------------------------------
class CustomTextButton extends StatelessWidget {
  CustomTextButton({
    Key? key,
    required this.onPressed,
    required this.text,
  }) : super(key: key);

  final VoidCallback onPressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(text),
      style: TextButton.styleFrom(
          primary: Theme.of(context).primaryColor,
          textStyle: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          )),
    );
  }
}

// FORM FIELDS FOR EDITING PROFILE
class CustomFormField extends StatelessWidget {
  CustomFormField({
    Key? key,
    required this.width,
    required this.controller,
    required this.hintText,
    this.icon,
    this.validator,
  }) : super(key: key);

  double width;
  TextEditingController controller;
  String hintText;

  String Function(String?)? validator;
  Icon? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      child: TextFormField(
        validator: validator,
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText,
          prefixIcon: icon,
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderSide: BorderSide(
              width: 1,
              color: Color.fromARGB(96, 60, 60, 60),
            ),
            borderRadius: BorderRadius.circular(5),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 2,
              color: Theme.of(context).primaryColor,
            ),
            borderRadius: BorderRadius.circular(5),
          ),
        ),
      ),
    );
  }
}
