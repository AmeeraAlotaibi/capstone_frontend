import 'package:capstone_frontend/widgets/custom_widgets.dart';
import 'package:capstone_frontend/widgets/search_bar.dart';
import 'package:capstone_frontend/widgets/trainer_card.dart';
import 'package:capstone_frontend/widgets/workout_box.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ExploreTab extends StatelessWidget {
  ExploreTab({Key? key}) : super(key: key);
  final _query = TextEditingController();
  // DELETE LATER *******************
  final List<String> trainer = [
    "Adam Scott",
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
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            margin: const EdgeInsets.only(top: 125),
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
                const SectionHeadings(
                  icon: Icon(
                    Icons.people,
                    color: Color(0xFF4c4c4c),
                  ),
                  heading: "Popular Trainers",
                ),
                const SizedBox(
                  height: 15,
                ),

                // Will be replaced by a list view builder later on
                Container(
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
                      onTap: () {},
                    ),
                  ),
                ),
                // end of will be replaced

                const SectionHeadings(
                  icon: Icon(
                    Icons.sports_martial_arts,
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
                  children: const [
                    WorkoutBox(),
                    WorkoutBox(),
                    WorkoutBox(),
                    WorkoutBox(),
                  ],
                ),
                // end of workout container
              ],
            ),
          ),
        ),
      ),
    );
  }
}
