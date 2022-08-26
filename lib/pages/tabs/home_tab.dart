import 'package:capstone_frontend/widgets/schedule_card.dart';
import 'package:capstone_frontend/widgets/welcome_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

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
                height: 150,
              ),
              WelcomeCard(
                username: "Ameera",
                avatar:
                    "https://millingtontownship.com/wp-content/uploads/2021/01/default.jpg",
              ),
              const SizedBox(
                height: 50,
              ),
              Text(
                "Schedule for Today:",
                style: Theme.of(context).textTheme.headline6,
              ),
              const SizedBox(
                height: 15,
              ),
              ScheduleCard(),
            ],
          ),
        ),
      ),
    );
  }
}
