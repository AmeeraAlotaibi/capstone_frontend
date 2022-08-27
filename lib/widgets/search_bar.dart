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
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 8),
            spreadRadius: -13,
            blurRadius: 28,
            color: Color.fromRGBO(156, 156, 156, 1),
          ),
        ],
      ),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(horizontal: 15),
          filled: true,
          fillColor: Colors.white,
          hintText: "Search Trainers",
          hintStyle: const TextStyle(
            color: Color.fromARGB(255, 184, 184, 184),
          ),
          suffixIcon: const Icon(
            Icons.search,
            color: Color.fromARGB(255, 184, 184, 184),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(
              color: Colors.white,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(
              width: 2,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
