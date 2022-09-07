import 'package:capstone_frontend/widgets/generic/dividers.dart';
import 'package:capstone_frontend/widgets/generic/section_heading.dart';
import 'package:capstone_frontend/widgets/cards/subscription_card.dart';
import 'package:capstone_frontend/widgets/sections/my_plans.dart';
import 'package:capstone_frontend/widgets/sections/today_workout.dart';
import 'package:capstone_frontend/widgets/skeleton_loading/home_cards_loading.dart';
import 'package:capstone_frontend/widgets/skeleton_loading/welcome_card_loading.dart';
import 'package:flutter/material.dart';
import 'package:capstone_frontend/widgets/cards/schedule_card.dart';
import 'package:capstone_frontend/widgets/cards/welcome_card.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({Key? key}) : super(key: key);

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
              WelcomeCard(),
              const SizedBox(
                height: 10,
              ),
              const HorizontalDiv(),
              // TODAYS SCHEDULE HEADING
              SectionHeadings(
                icon: Icon(
                  Icons.today,
                  color: Theme.of(context).canvasColor,
                ),
                heading: "Today's Schedule",
              ),
              const SizedBox(
                height: 15,
              ),
              TodayExercise(),
              // MY SUBSCRIPTION HEADING
              SectionHeadings(
                  icon: Icon(
                    Icons.monetization_on,
                    color: Theme.of(context).canvasColor,
                  ),
                  heading: "My Subscription"),
              const SizedBox(
                height: 15,
              ),
              MyPlans()
            ],
          ),
        ),
      ),
    );
  }
}
