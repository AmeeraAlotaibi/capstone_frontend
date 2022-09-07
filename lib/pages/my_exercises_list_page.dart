import 'package:capstone_frontend/providers/category_provider.dart';
import 'package:capstone_frontend/providers/workout_provider.dart';
import 'package:capstone_frontend/widgets/cards/exercise_card.dart';
import 'package:capstone_frontend/widgets/cards/schedule_card.dart';
import 'package:capstone_frontend/widgets/generic/nothing_view.dart';
import 'package:capstone_frontend/widgets/skeleton_loading/gridview_loading.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:go_router/go_router.dart';

class MyExercisesListPage extends StatelessWidget {
  MyExercisesListPage({Key? key}) : super(key: key);
  var controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Assigned Workout"),
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
          future: context.watch<WorkoutProvider>().getAllWorkouts(),
          builder: (context, dataSnapshot) {
            if (dataSnapshot.connectionState == ConnectionState.waiting) {
              // loading skeleton
              return GridLoading(
                controller: controller,
              );
            } else {
              // start of future builder
              return Consumer<WorkoutProvider>(
                builder: ((context, prov, child) {
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
                    itemCount: prov.allWorkouts.length,
                    itemBuilder: (context, index) {
                      return  prov.allWorkouts.isEmpty
                          ? const NothingHere()
                          :  ScheduleCard(
                                onTap: ()async {
                                  await prov.doneWorkour(prov.allWorkouts[index].id!, !prov.allWorkouts[index].done!);
                                },
                                done:prov.allWorkouts[index].done!,
                                date:prov.allWorkouts[index].date!,
                                sets: prov.allWorkouts[index].sets!,
                                workout:
                                    prov.allWorkouts[index].exercise!.name!,
                                time: prov.allWorkouts[index].time!,
                                reps: prov.allWorkouts[index].reps!,
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
