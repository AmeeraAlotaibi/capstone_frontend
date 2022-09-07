import 'package:capstone_frontend/models/trainer.dart';
import 'package:capstone_frontend/providers/trainer_provider.dart';
import 'package:capstone_frontend/widgets/cards/trainer_card.dart';
import 'package:capstone_frontend/widgets/skeleton_loading/gridview_loading.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:go_router/go_router.dart';

class TrainersListPage extends StatelessWidget {
  TrainersListPage({Key? key, this.trainer}) : super(key: key);
  var controller = ScrollController();
  final Trainer? trainer;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("All Trainers"),
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
      body: FutureBuilder(
          future: context.watch<TrainerProvider>().getTrainers(),
          builder: (context, dataSnapshot) {
            if (dataSnapshot.connectionState == ConnectionState.waiting) {
              // loading skeleton
              return GridLoading(
                controller: controller,
              );
            } else {
              // start of future builder
              return Consumer<TrainerProvider>(
                builder: ((context, trainer, child) {
                  return GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 8,
                      crossAxisSpacing: 8,
                      childAspectRatio: 1 / 1.20,
                    ),
                    padding: const EdgeInsets.all(15),
                    controller: controller,
                    itemCount: trainer.trainers.length,
                    itemBuilder: (context, index) {
                      return TrainerCard(
                        trainer:
                            "${trainer.trainers[index].user.first_name!} ${trainer.trainers[index].user.last_name!}",
                        id: trainer.trainers[index].user.id??0,
                      rating: trainer.trainers[index].rating??0,
                        avatar: trainer.trainers[index].image ??
                            "https://t4.ftcdn.net/jpg/00/64/67/63/240_F_64676383_LdbmhiNM6Ypzb3FM4PPuFP9rHe7ri8Ju.jpg",
                        onTap: () {

                        context.push("/trainer-profile",extra: trainer.trainers[index].user.id);
                      },

                      );
                    },
                  );
                }),
              );
            }
          }),
    );
  }
}
