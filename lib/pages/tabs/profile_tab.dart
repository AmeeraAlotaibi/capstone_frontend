import 'package:capstone_frontend/models/user.dart';
import 'package:capstone_frontend/providers/trainee_provider.dart';
import 'package:capstone_frontend/widgets/cards/details_container.dart';
import 'package:capstone_frontend/widgets/generic/edit_circle_button.dart';
import 'package:capstone_frontend/widgets/generic/section_heading.dart';
import 'package:capstone_frontend/widgets/sections/bar_chart.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import '../../widgets/generic/dividers.dart';

class ProfileTab extends StatelessWidget {
   ProfileTab({Key? key}) : super(key: key);
final List<Color> gradientColors = [
    const Color(0xff23b6e6),
    const Color(0xff02d39a),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
        child: SingleChildScrollView(
          child: FutureBuilder(
              future: context.watch<TraineeProvider>().getProfile(),
              builder: (context, dataSnapshot) {
                if (dataSnapshot.connectionState == ConnectionState.waiting) {
                  return Text("waiting");
                } else {
                  return Consumer<TraineeProvider>(
                      builder: (context, profile, child) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Stack(
                          children: [
                            CircleAvatar(
                              radius: 60,
                              backgroundColor: Colors.grey[400],
                              backgroundImage: NetworkImage(
                                 profile.trainee.image?? "https://millingtontownship.com/wp-content/uploads/2021/01/default.jpg"),
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
                                  "${profile.trainee.user!.first_name} ${profile.trainee.user!.last_name} ",
                                  style: Theme.of(context).textTheme.headline6,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  profile.trainee.blood_type??"O+",
                                  style: Theme.of(context).textTheme.caption,
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            Text(
                              profile.trainee.user!.username,
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
                              height: 10,
                            ),
                            DetailsContainer(
                              title1: "Height",
                              subtitle1: "${profile.trainee.height}",
                              title2: "Age",
                              subtitle2: "${profile.trainee.age}",
                              title3: "Weight",
                              subtitle3: "${profile.trainee.weight}",
                            ),
                            
                            SectionHeadings(
                              icon: Icon(
                                Icons.monitor_heart,
                                color: Theme.of(context).canvasColor,
                              ),
                              heading: "Statistics",
                            ),
                            const HorizontalDiv(),
                           const SizedBox(
                              height: 20,
                            ),
                          
                           BarChartWidgte()
                          ],
                        ),
                      ],
                    );
                  });
                }
              }),
        ),
      ),
    );
  }
}
