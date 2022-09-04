import 'package:capstone_frontend/providers/plan_provider.dart';
import 'package:capstone_frontend/providers/workout_provider.dart';
import 'package:capstone_frontend/widgets/cards/schedule_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:go_router/go_router.dart';

class TodayExercise  extends StatelessWidget {
   TodayExercise ({ Key? key }) : super(key: key);
  var controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: FutureBuilder(
            future: context.watch<WorkoutProvider>().getWorkouts(),
            builder: (context, dataSnapshot) {
              if (dataSnapshot.connectionState == ConnectionState.waiting) {
                // loading skeleton
                return const Center(
                child: CircularProgressIndicator(),
              );
              } else {
                // start of future builder
                return Consumer<WorkoutProvider>(
                  builder: ((context, prov, child) {
                  return  SizedBox(
                  height: 156,
                  child: ListView.separated(
                    itemCount: prov.todayWorkouts.length <= 5 ?prov.todayWorkouts.length:5,
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, _) => const SizedBox(
                      width: 10,
                    ),
                    itemBuilder: (context, index) =>  ScheduleCard(
                            sets: prov.todayWorkouts[index].sets!,
                            workout: prov.todayWorkouts[index].exercise!.name!,
                            time: prov.todayWorkouts[index].time!,
                            reps: prov.todayWorkouts[index].reps!,
                          
                  ),
                  ),
                );
                  }));}}),
    );
  }
}

 