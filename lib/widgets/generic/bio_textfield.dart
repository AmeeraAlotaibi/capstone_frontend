import 'package:flutter/material.dart';

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
        const Text(
          "Bio: ",
          style: TextStyle(
            color: Color(0xFF4c4c4c),
            fontSize: 14,
          ),
        ),
        const SizedBox(
          height: 7.5,
        ),
        SizedBox(
          width: width,
          height: 75,
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
