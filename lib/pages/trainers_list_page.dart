import 'package:capstone_frontend/providers/trainer_provider.dart';
import 'package:capstone_frontend/widgets/cards/trainer_card.dart';
import 'package:capstone_frontend/widgets/skeleton_loading/gridview_loading.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TrainersListPage extends StatelessWidget {
  TrainersListPage({Key? key}) : super(key: key);
  var controller = ScrollController();

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
                        avatar:
                            "https://mdbcdn.b-cdn.net/img/new/avatars/2.webp",
                        onTap: () {
                          // push to trainer profile here
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
