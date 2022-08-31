import 'package:capstone_frontend/widgets/skeleton_loading/trainer_card_loading.dart';
import 'package:flutter/material.dart';

class GridLoading extends StatelessWidget {
  GridLoading({
    Key? key,
    this.controller,
  }) : super(key: key);
  var controller;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        childAspectRatio: 1 / 1.20,
      ),
      padding: const EdgeInsets.all(15),
      controller: controller,
      itemCount: 10,
      itemBuilder: (context, index) {
        return const TrainerCardLoading();
      },
    );
  }
}
