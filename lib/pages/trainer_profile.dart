
import 'package:capstone_frontend/providers/plan_provider.dart';
import 'package:capstone_frontend/providers/trainer_provider.dart';
import 'package:capstone_frontend/widgets/cards/details_container.dart';
import 'package:capstone_frontend/widgets/cards/trainer_profile_card.dart';
import 'package:capstone_frontend/widgets/generic/gradient_button.dart';
import 'package:capstone_frontend/widgets/skeleton_loading/gridview_loading.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TrainerProfile extends StatelessWidget {

  var trainerId;
  TrainerProfile({Key? key, required this.trainerId}) : super(key: key);

  var controller = ScrollController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Trainer Profile"),
      ),
      body:FutureBuilder(
          future: context.watch<TrainerProvider>().getTrainerProfile(trainerId),
          builder: (context, dataSnapshot) {
            if (dataSnapshot.connectionState == ConnectionState.waiting) {
              // loading skeleton
              return GridLoading(
                controller: controller,
              );
            } else {
              // start of future builder
              return Consumer<TrainerProvider>(
                builder: ((context, trainer, child) {
                return   SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height - 150,
          margin: const EdgeInsets.only(top: 25),
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // beginning of avatar card
              Column(
                children: [
                  TrainerProfileCard(
                    avatar:trainer.trainerDetail.image?? "https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-profiles/avatar-1.webp",
                    fullName: '${trainer.trainerDetail.user.first_name} ${trainer.trainerDetail.user.last_name}',
                    username: trainer.trainerDetail.user.username,
                  ),
                  const SizedBox(
                    height: 25,
                  ),

                  // details row
                  DetailsContainer(
                    title1: "Experience",

                    subtitle1: '${trainer.trainerDetail.experience}YRS',
                    title2: "Age",
                    subtitle2: '${trainer.trainerDetail.age}YRS',
                    title3: "Specialty",
                    subtitle3: '${trainer.trainerDetail.specialty}',

                  ),

                  const SizedBox(
                    height: 15,
                  ),

                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "About: ",
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        const SizedBox(
                          height: 7.5,
                        ),
                        Text(
                          "Lorem ipsum dolor ist, lorem lorenf kajfi faithe dfjlkei gljdfa, lorem ipsum is near us all, their fajfalkjei  lkjfiw.",
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),

                  trainer.trainerDetail.subscription!= null?Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Subscription Details: ",
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        const SizedBox(
                          height: 7.5,
                        ),
                        Text(
                          trainer.trainerDetail.subscription?.describtion??"Lorem ipsum dolor ist, lorem lorenf kajfi faithe dfjlkei gljdfa, lorem ipsum is near us all, their fajfalkjei  lkjfiw.",
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ],
                    ),
                  ):const SizedBox(
                    height: 30,
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              trainer.trainerDetail.subscription!= null? 
              Center(
                child: CustomButton(
                  width: 350,
                  buttonText: 
                    
                  "${context.read<PlanProvider>().getPlanByID(trainer.trainerDetail.subscription!.id!) ?"Renew":"Subscribe"} ${trainer.trainerDetail.subscription?.price} KWD",
                  onPressed:  () {
                    // subscribe button function here
                    context.read<PlanProvider>().getPlanByID(trainer.trainerDetail.subscription!.id!)?
                    context.read<PlanProvider>().renew(trainer.trainerDetail.subscription!.id!,trainer.trainerDetail.subscription!.duration!)
                    :context.read<PlanProvider>().subscribe(trainer.trainerDetail.subscription!.id!,trainer.trainerDetail.subscription!.duration!);
                  },
                ),
              ):
              Center(
                child: CustomButton(
                  width: 350,
                  buttonText: "Subscription not Available",
                  onPressed: () {
                    // subscribe button function here
                  },
                ),
              )
              ,
            ],
          ),
        ),
      );
                }));}})

      ///////
     
    );
  }
}
