import 'package:capstone_frontend/widgets/custom_widgets.dart';
import 'package:capstone_frontend/widgets/profile_components.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.only(top: 125),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: [
                  ProfileAvatar(
                    avatar:
                        "https://millingtontownship.com/wp-content/uploads/2021/01/default.jpg",
                  ),
                  Positioned(
                      bottom: 0,
                      right: 5,
                      child: EditButton(
                        onTap: () {
                          context.push("/edit-profile");
                        },
                      )),
                ],
              ),
              Container(
                width: 350,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                margin: const EdgeInsets.only(top: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Ameera Alotaibi",
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Text(
                      "@MeeraReed",
                      style: Theme.of(context).textTheme.headline2,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "lorem ipsum, dolor sit amet, consectetur elit, seddo eisumnd lorem ipsum dolor sit.",
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    DetailsRow(
                      height: "155",
                      age: "25",
                      weight: "75",
                    ),
                    const SectionHeadings(
                      icon: Icon(
                        Icons.monitor_heart,
                        color: Color(0xFF4c4c4c),
                      ),
                      heading: "Statistics",
                    ),
                    const HorizontalLine(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
