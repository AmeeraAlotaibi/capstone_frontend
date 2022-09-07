import 'package:capstone_frontend/providers/category_provider.dart';
import 'package:capstone_frontend/widgets/cards/workout_box.dart';
import 'package:capstone_frontend/widgets/skeleton_loading/home_cards_loading.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:go_router/go_router.dart';

class Categories extends StatelessWidget {
  Categories({Key? key}) : super(key: key);
  var controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: FutureBuilder(
          future: context.watch<CategoryProvider>().getCategories(),
          builder: (context, dataSnapshot) {
            if (dataSnapshot.connectionState == ConnectionState.waiting) {
              // loading skeleton
              return const Center(
                child: HomeCardLoading(),
              );
            } else {
              // start of future builder
              return Consumer<CategoryProvider>(
                  builder: ((context, prov, child) {
                return SizedBox(
                  height: 79,
                  child: ListView.separated(
                    itemCount: prov.categories.length <= 5
                        ? prov.categories.length
                        : 5,
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, _) => const SizedBox(
                      width: 10,
                    ),
                    itemBuilder: (context, index) => WorkoutBox(
                      icon: const FaIcon(
                        FontAwesomeIcons.personRunning,
                        color: Color.fromARGB(255, 153, 25, 239),
                        size: 35,
                      ),
                      title: prov.categories[index].name!,
                      onTap: () {
                        context.push("/exercises-list",
                            extra: prov.categories[index].id);
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
