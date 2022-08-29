import 'package:flutter/material.dart';

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
          contentPadding:
              const EdgeInsets.symmetric(vertical: 0, horizontal: 15),
          hintText: hintText,
          prefixIcon: icon,
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderSide: const BorderSide(
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
        child: Text(buttonText),
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 13.5),
          primary: Colors.transparent,
          elevation: 0,
          textStyle: const TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

// CANCEL BUTTON
class CancelButton extends StatelessWidget {
  const CancelButton({
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
        primary: Color(0xFF4c4c4c),
        textStyle: TextStyle(
          fontSize: 14,
        ),
      ),
    );
  }
}

// FORM FIELDS FOR EDITING PROFILE
class CustomFormField extends StatelessWidget {
  CustomFormField({
    Key? key,
    required this.width,
    required this.label,
    required this.controller,
    required this.hintText,
    this.icon,
    this.suffix,
    this.validator,
  }) : super(key: key);

  double width;
  TextEditingController controller;
  String hintText;

  String Function(String?)? validator;
  Icon? icon;
  Widget? suffix;
  String label;

  @override
  Widget build(BuildContext context) {
    return Column(
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
        Container(
          width: width,
          child: TextFormField(
            validator: validator,
            controller: controller,
            decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
              hintText: hintText,
              hintMaxLines: 1,
              hintStyle: const TextStyle(
                color: Color.fromARGB(255, 184, 184, 184),
              ),
              prefixIcon: icon,
              suffix: suffix,
              suffixStyle: const TextStyle(
                color: Color.fromARGB(255, 150, 150, 150),
              ),
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderSide: const BorderSide(
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
        ),
      ],
    );
  }
}

class SectionHeadings extends StatelessWidget {
  const SectionHeadings({
    Key? key,
    required this.icon,
    required this.heading,
  }) : super(key: key);

  final Icon icon;
  final String heading;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 35),
      width: 250,
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
    );
  }
}

// Section headings with side button
class SectionHeadingsWithButton extends StatelessWidget {
  const SectionHeadingsWithButton({
    Key? key,
    required this.icon,
    required this.heading,
    required this.buttonText,
    required this.onPressed,
  }) : super(key: key);

  final Icon icon;
  final String heading;
  final String buttonText;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 35),
      width: 350,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
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
          CustomTextButton(
            onPressed: onPressed,
            text: buttonText,
          ),
        ],
      ),
    );
  }
}

// BIO TEXT FORM FIELD
class BioField extends StatelessWidget {
  BioField({
    Key? key,
    required this.width,
    required this.controller,
    this.icon,
    this.suffix,
    this.validator,
  }) : super(key: key);

  double width;
  TextEditingController controller;
  String Function(String?)? validator;
  Icon? icon;
  Widget? suffix;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Bio: ",
          style: const TextStyle(
            color: Color(0xFF4c4c4c),
            fontSize: 14,
          ),
        ),
        const SizedBox(
          height: 7.5,
        ),
        SizedBox(
          width: width,
          height: 100,
          child: TextFormField(
            expands: true,
            maxLines: null,
            validator: validator,
            controller: controller,
            decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
              hintText: "Write about yourself...",
              hintMaxLines: 1,
              hintStyle: const TextStyle(
                color: Color.fromARGB(255, 184, 184, 184),
              ),
              prefixIcon: icon,
              suffix: suffix,
              suffixStyle: const TextStyle(
                color: Color.fromARGB(255, 150, 150, 150),
              ),
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderSide: const BorderSide(
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
        ),
      ],
    );
  }
}
