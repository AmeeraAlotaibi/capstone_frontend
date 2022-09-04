import 'package:capstone_frontend/providers/category_provider.dart';
import 'package:capstone_frontend/widgets/cards/exercise_card.dart';
import 'package:capstone_frontend/widgets/skeleton_loading/gridview_loading.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:go_router/go_router.dart';

class ExercisesListPage extends StatelessWidget {
  final int categoryId;
  ExercisesListPage({Key? key, required this.categoryId}) : super(key: key);
  var controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Exercises"),
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
          future: context.watch<CategoryProvider>().getExercises(categoryId),
          builder: (context, dataSnapshot) {
            if (dataSnapshot.connectionState == ConnectionState.waiting) {
              // loading skeleton
              return GridLoading(
                controller: controller,
              );
            } else {
              // start of future builder
              return Consumer<CategoryProvider>(
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
                    itemCount: prov.exercises.length,
                    itemBuilder: (context, index) {
                      return ExerciseCard(
                        name:
                         prov.exercises[index].name!,
                        image:
                            prov.exercises[index].image ?? "https://t4.ftcdn.net/jpg/00/64/67/63/240_F_64676383_LdbmhiNM6Ypzb3FM4PPuFP9rHe7ri8Ju.jpg",
                        onTap: () {
                          ///
                          context.push("/exercise",extra: prov.exercises[index].video!);
                      }, trainer: prov.exercises[index].trainer!.user.username,
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
