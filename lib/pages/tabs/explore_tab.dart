import 'package:capstone_frontend/widgets/generic/search_bar.dart';
import 'package:capstone_frontend/widgets/generic/section_heading.dart';
import 'package:capstone_frontend/widgets/cards/trainer_card.dart';
import 'package:capstone_frontend/widgets/cards/workout_box.dart';
import 'package:capstone_frontend/widgets/sections/categories.dart';
import 'package:capstone_frontend/widgets/sections/popular_trainers.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class ExploreTab extends StatelessWidget {
  ExploreTab({Key? key}) : super(key: key);
  final _query = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 250,
                child: Text(
                  "Find The Best Path For You...",
                  style: Theme.of(context).textTheme.headline3,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              SearchBar(
                controller: _query,
              ),
              SectionHeadings(
                icon: Icon(
                  Icons.people,
                  color: Theme.of(context).canvasColor,
                ),
                heading: "Popular Trainers",
                trailing: TextButton(
                  onPressed: () {
                    // push to list of trainers here
                    context.push("/trainers-list");
                  },
                  child: Text(
                    "see all",
                    style: TextStyle(
                      color: Theme.of(context).canvasColor,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),

              PopularTrainer(),

              SectionHeadings(
                icon: Icon(
                  Icons.sports_gymnastics,
                  color: Theme.of(context).canvasColor,
                ),
                heading: "Workouts",
              ),

              const SizedBox(
                height: 10,
              ),
              // start of workout container
              Categories(),
              const SizedBox(
                height: 10,
              ),

              // end of workout container
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
