import 'package:capstone_frontend/widgets/profile_components.dart';
import 'package:flutter/material.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 25),
          child: Container(
            width: double.infinity,
            margin: const EdgeInsets.only(top: 100),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ProfileAvatar(
                  avatar:
                      "https://millingtontownship.com/wp-content/uploads/2021/01/default.jpg",
                ),
                Container(
                  width: 350,
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  margin: const EdgeInsets.only(top: 10),
                  child: Column(
                    children: [
                      Text(
                        "Ameera Alotaibi",
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                      Text(
                        "@MeeraReed",
                        style: Theme.of(context).textTheme.headline2,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "lorem ipsum, dolor sit amet, consectetur elit, seddo eisumnd",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      DetailsRow(
                        height: "155",
                        age: "25",
                        friends: "100",
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 30),
                        width: 350,
                        child: Text(
                          "Statistics",
                          textAlign: TextAlign.left,
                          style: Theme.of(context).textTheme.headline6,
                        ),
                      ),
                      const HorizontalLine(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
