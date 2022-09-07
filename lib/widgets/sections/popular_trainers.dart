import 'package:capstone_frontend/providers/trainer_provider.dart';
import 'package:capstone_frontend/widgets/cards/trainer_card.dart';
import 'package:capstone_frontend/widgets/skeleton_loading/gridview_loading.dart';
import 'package:capstone_frontend/widgets/skeleton_loading/list_view_loading.dart';
import 'package:capstone_frontend/widgets/skeleton_loading/trainer_card_loading.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:go_router/go_router.dart';

class PopularTrainer extends StatelessWidget {
  PopularTrainer({Key? key}) : super(key: key);
  var controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: FutureBuilder(
          future: context.watch<TrainerProvider>().getTrainers(),
          builder: (context, dataSnapshot) {
            if (dataSnapshot.connectionState == ConnectionState.waiting) {
              // loading skeleton
              return const Center(
                child: ListViewLoading(),
              );
            } else {
              // start of future builder
              return Consumer<TrainerProvider>(
                  builder: ((context, trainer, child) {
                return SizedBox(
                  height: 206,
                  child: ListView.separated(
                    itemCount: trainer.trainers.length <= 5
                        ? trainer.trainers.length
                        : 5,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    separatorBuilder: (context, _) => const SizedBox(
                      width: 10,
                    ),
                    itemBuilder: (context, index) => TrainerCard(
                      trainer: trainer.trainers[index].user.username,
                      id: trainer.trainers[index].user.id??0,
                      rating: trainer.trainers[index].rating??0,
                      avatar: trainer.trainers[index].image ??
                          "https://millingtontownship.com/wp-content/uploads/2021/01/default.jpg",
                      onTap: () {
                        context.push("/trainer-profile",
                            extra: trainer.trainers[index].user.id);
                      },
                    ),
                  ),
                );
              }));
            }
          }),
    );
  }
}
