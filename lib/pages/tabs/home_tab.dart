import 'package:capstone_frontend/widgets/custom_widgets.dart';
import 'package:capstone_frontend/widgets/profile_components.dart';
import 'package:capstone_frontend/widgets/subscription_card.dart';
import 'package:flutter/material.dart';
import 'package:capstone_frontend/widgets/schedule_card.dart';
import 'package:capstone_frontend/widgets/welcome_card.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 125,
              ),
              WelcomeCard(
                username: "Ameera".toUpperCase(),
                avatar:
                    "https://millingtontownship.com/wp-content/uploads/2021/01/default.jpg",
              ),
              const HorizontalLine(),
              const SectionHeadings(
                  icon: Icon(
                    Icons.today,
                    color: Color(0xFF4c4c4c),
                  ),
                  heading: "Today's Schedule"),
              const SizedBox(
                height: 15,
              ),
              ScheduleCard(
                sets: 5,
                workout: "Push-ups",
              ),
              const SectionHeadings(
                  icon: Icon(
                    Icons.monetization_on,
                    color: Color(0xFF4c4c4c),
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
