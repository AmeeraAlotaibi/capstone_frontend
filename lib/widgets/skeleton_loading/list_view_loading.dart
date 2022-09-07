import 'package:capstone_frontend/widgets/skeleton_loading/trainer_card_loading.dart';
import 'package:flutter/material.dart';

class ListViewLoading extends StatelessWidget {
  const ListViewLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 206,
      child: ListView.separated(
        itemCount: 3,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        separatorBuilder: (context, _) => const SizedBox(
          width: 10,
        ),
        itemBuilder: (context, index) => const TrainerCardLoading(),
      ),
    );
  }
}
