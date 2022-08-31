import 'package:capstone_frontend/widgets/generic/dividers.dart';
import 'package:capstone_frontend/widgets/generic/section_heading.dart';
import 'package:capstone_frontend/widgets/cards/subscription_card.dart';
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
              WelcomeCard(
                username: "Ameera".toUpperCase(),
                avatar:
                    "https://millingtontownship.com/wp-content/uploads/2021/01/default.jpg",
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
              ScheduleCard(
                sets: 5,
                workout: "Push-ups",
              ),
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
              SubscriptionCard(
                start_date: "01-09-2022",
                end_date: "01-10-2022",
                trainer: "Tony Stark",
                price: "9.99",
                onPressed: () {
                  // cancel sub button function here
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
