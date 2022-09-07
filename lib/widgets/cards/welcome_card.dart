import 'package:capstone_frontend/providers/trainee_provider.dart';
import 'package:capstone_frontend/widgets/skeleton_loading/welcome_card_loading.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class WelcomeCard extends StatelessWidget {
  WelcomeCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(

        future: context.watch<TraineeProvider>().getProfile(),
        builder: (context, dataSnapshot) {
          if (dataSnapshot.connectionState == ConnectionState.waiting) {
            // loading skeleton
            return const Center(

              child: WelcomeCardLoading(),
            );
          } else {
            // start of future builder
            return Consumer<TraineeProvider>(
              builder: ((context, prov, child) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hello there,",
                            style: Theme.of(context).textTheme.caption,
                          ),
                          Text(
                            prov.trainee.user!.username,
                            style: Theme.of(context).textTheme.headline2,
                          ),
                        ],
                      ),
                      CircleAvatar(
                        radius: 35,
                        backgroundColor: Colors.grey[400],
                        backgroundImage: NetworkImage(prov.trainee.image ??
                            "https://millingtontownship.com/wp-content/uploads/2021/01/default.jpg"),
                      ),
                    ],
                  ),
                );
              }),
            );
          }
        });
  }
}
