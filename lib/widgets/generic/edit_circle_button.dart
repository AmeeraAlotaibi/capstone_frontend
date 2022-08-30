import 'package:flutter/material.dart';

// a small container that houses the edit icon for the profile page
class EditButton extends StatelessWidget {
  EditButton({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: ClipOval(
        child: Container(
          width: 30,
          height: 30,
          color: Theme.of(context).primaryColor,
          child: const Icon(
            Icons.edit,
            size: 17,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
