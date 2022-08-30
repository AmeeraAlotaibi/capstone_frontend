import 'package:capstone_frontend/widgets/cards/trainer_card.dart';
import 'package:flutter/material.dart';

class TrainersListPage extends StatelessWidget {
  TrainersListPage({Key? key}) : super(key: key);
  final controller = ScrollController();
  // DELETE LATER *******************
  final List<String> trainer = [
    "Terry Crews",
    "Tony Stark",
    "Jake Peralta",
    "Terry Crews",
    "Tony Stark",
    "Jake Peralta",
    "Terry Crews",
    "Tony Stark",
    "Jake Peralta",
  ];
  final List<String> avatar = [
    "https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-profiles/avatar-1.webp",
    "https://mdbcdn.b-cdn.net/img/new/avatars/2.webp",
    "https://aveurope.es/wp-content/uploads/2016/11/btx-avatar-placeholder-01.jpg",
    "https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-profiles/avatar-1.webp",
    "https://mdbcdn.b-cdn.net/img/new/avatars/2.webp",
    "https://aveurope.es/wp-content/uploads/2016/11/btx-avatar-placeholder-01.jpg",
    "https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-profiles/avatar-1.webp",
    "https://mdbcdn.b-cdn.net/img/new/avatars/2.webp",
    "https://aveurope.es/wp-content/uploads/2016/11/btx-avatar-placeholder-01.jpg",
  ];
  // DELETE LATER *******************
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("All Trainers"),
        actions: [
          IconButton(
            onPressed: () {
              const double value = 0;
              // to jump to the start of the grid view, has animations
              controller.animateTo(
                value,
                curve: Curves.easeOut,
                duration: const Duration(milliseconds: 500),
              );
            },
            icon: const Icon(Icons.arrow_upward_rounded),
          ),
        ],
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          childAspectRatio: 1 / 1.20,
        ),
        padding: const EdgeInsets.all(15),
        controller: controller,
        itemCount: avatar.length,
        itemBuilder: (context, index) {
          return TrainerCard(
            trainer: trainer[index],
            avatar: avatar[index],
            onTap: () {},
          );
        },
      ),
    );
  }
}
