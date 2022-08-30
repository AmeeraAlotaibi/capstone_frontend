import 'package:capstone_frontend/widgets/cards/details_container.dart';
import 'package:capstone_frontend/widgets/cards/trainer_profile_card.dart';
import 'package:capstone_frontend/widgets/generic/gradient_button.dart';
import 'package:flutter/material.dart';

class TrainerProfile extends StatelessWidget {
  const TrainerProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Trainer Profile"),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          margin: const EdgeInsets.only(top: 25),
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // beginning of avatar card
              TrainerProfileCard(
                avatar:
                    "https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-profiles/avatar-1.webp",
                fullName: "Dwight Schrutt",
                username: "@DwightTHEGOAT",
              ),
              const SizedBox(
                height: 25,
              ),

              // details row
              DetailsContainer(
                title1: "Experience",
                subtitle1: "3YRS",
                title2: "Age",
                subtitle2: "35YRS",
                title3: "Specialty",
                subtitle3: "Cross-fit",
              ),

              const SizedBox(
                height: 15,
              ),

              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "About: ",
                      style: TextStyle(
                        fontSize: 17,
                        color: Color(0xFF4c4c4c),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 7.5,
                    ),
                    Text(
                      "Lorem ipsum dolor ist, lorem lorenf kajfi faithe dfjlkei gljdfa",
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              CustomButton(
                width: 350,
                buttonText: "Subscribe",
                onPressed: () {
                  // subscribe button function here
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
