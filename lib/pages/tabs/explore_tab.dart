import 'package:capstone_frontend/widgets/generic/search_bar.dart';
import 'package:capstone_frontend/widgets/generic/section_heading.dart';
import 'package:capstone_frontend/widgets/cards/trainer_card.dart';
import 'package:capstone_frontend/widgets/cards/workout_box.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class ExploreTab extends StatelessWidget {
  ExploreTab({Key? key}) : super(key: key);
  final _query = TextEditingController();
  // DELETE LATER *******************
  final List<String> trainer = [
    "Terry Crews",
    "Tony Stark",
    "Jake Peralta",
  ];
  final List<String> avatar = [
    "https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-profiles/avatar-1.webp",
    "https://mdbcdn.b-cdn.net/img/new/avatars/2.webp",
    "https://aveurope.es/wp-content/uploads/2016/11/btx-avatar-placeholder-01.jpg",
  ];
  // DELETE LATER *******************
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
                icon: const Icon(
                  Icons.people,
                  color: Color(0xFF4c4c4c),
                ),
                heading: "Popular Trainers",
                trailing: TextButton(
                  onPressed: () {
                    // push to list of trainers here
                    context.push("/trainers-list");
                  },
                  child: const Text(
                    "see all",
                    style: TextStyle(
                      color: Color(0xFF4c4c4c),
                      fontSize: 14,
                    ),
                  ),
                ),
              ),

              // Will be replaced by a list view builder later on
              SizedBox(
                height: 206,
                child: ListView.separated(
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, _) => const SizedBox(
                    width: 10,
                  ),
                  itemBuilder: (context, index) => TrainerCard(
                    trainer: trainer[index],
                    avatar: avatar[index],
                    onTap: () {
                      context.push("/trainer-profile");
                    },
                  ),
                ),
              ),
              // end of will be replaced

              const SectionHeadings(
                icon: Icon(
                  Icons.sports_gymnastics,
                  color: Color(0xFF4c4c4c),
                ),
                heading: "Workouts",
              ),

              const SizedBox(
                height: 10,
              ),
              // start of workout container
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  WorkoutBox(
                    bgColor: Theme.of(context).cardColor,
                    color: Theme.of(context).primaryColor,
                    icon: FaIcon(
                      FontAwesomeIcons.personRunning,
                      color: Theme.of(context).primaryColor,
                      size: 35,
                    ),
                    title: "Acrobatic",
                  ),
                  WorkoutBox(
                    bgColor: const Color.fromARGB(255, 223, 244, 255),
                    color: const Color.fromARGB(255, 25, 143, 239),
                    icon: const FaIcon(
                      FontAwesomeIcons.personBiking,
                      color: Color.fromARGB(255, 25, 143, 239),
                      size: 35,
                    ),
                    title: "Biking",
                  ),
                  WorkoutBox(
                    bgColor: const Color.fromARGB(255, 255, 250, 230),
                    color: const Color.fromARGB(255, 244, 200, 3),
                    icon: const FaIcon(
                      FontAwesomeIcons.tableTennisPaddleBall,
                      color: Color.fromARGB(255, 244, 200, 3),
                      size: 35,
                    ),
                    title: "sports",
                  ),
                  WorkoutBox(
                    bgColor: const Color.fromARGB(255, 255, 222, 245),
                    color: const Color.fromARGB(255, 210, 22, 132),
                    icon: const FaIcon(
                      FontAwesomeIcons.weightHanging,
                      color: Color.fromARGB(255, 210, 22, 132),
                      size: 35,
                    ),
                    title: "Cross Fit",
                  ),
                ],
              ),
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
