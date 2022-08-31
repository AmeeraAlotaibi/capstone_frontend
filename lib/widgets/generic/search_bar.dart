import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  SearchBar({
    Key? key,
    required this.controller,
  }) : super(key: key);

  TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 5),
            spreadRadius: -13,
            blurRadius: 28,
            color: Theme.of(context).shadowColor,
          ),
        ],
      ),
      child: TextField(
        controller: controller,
        decoration: const InputDecoration(
          hintText: "Search Trainers",
          suffixIcon: Icon(
            Icons.search,
          ),
        ),
      ),
    );
  }
}
