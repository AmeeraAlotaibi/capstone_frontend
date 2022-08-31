import 'package:capstone_frontend/widgets/cards/details_container.dart';
import 'package:capstone_frontend/widgets/generic/edit_circle_button.dart';
import 'package:capstone_frontend/widgets/generic/section_heading.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../widgets/generic/dividers.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundColor: Colors.grey[400],
                    backgroundImage: NetworkImage(
                        "https://millingtontownship.com/wp-content/uploads/2021/01/default.jpg"),
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Ameera Alotaibi",
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Text(
                        "O+",
                        style: Theme.of(context).textTheme.caption,
                      ),
                    ],
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
                  DetailsContainer(
                    title1: "Height",
                    subtitle1: "165CM",
                    title2: "Age",
                    subtitle2: "25YRS",
                    title3: "Weight",
                    subtitle3: "85KG",
                  ),
                  SectionHeadings(
                    icon: Icon(
                      Icons.monitor_heart,
                      color: Theme.of(context).canvasColor,
                    ),
                    heading: "Statistics",
                  ),
                  const HorizontalDiv(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
