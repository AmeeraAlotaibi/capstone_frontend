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
        Text(
          "Bio: ",
          style: Theme.of(context).textTheme.bodyText2,
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
            decoration: const InputDecoration(
              contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
              hintText: "Write about yourself...",
            ),
          ),
        ),
      ],
    );
  }
}
