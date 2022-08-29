import 'package:capstone_frontend/widgets/custom_widgets.dart';
import 'package:capstone_frontend/widgets/profile_components.dart';
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
          margin: const EdgeInsets.only(top: 25),
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // beginning of avatar card
              TrainerProfileCard(
                avatar: "https://th.bing.com/th/id/R.7b28486aef56a9acfcfd585422898b5a?rik=q3n7uJL5QvbSYQ&pid=ImgRaw&r=0", 
                fullName: "Full Name", 
                username: "@Username", 
                experience: "3 years", 
                specialty: "Cross-fit", 
                rating: "4.7", 
                bio: "Hello World!",
                ),
              const SizedBox(height: 15,),
              const Text("Bio: ", style: TextStyle(
                fontSize: 20,
                color: Color(0xFF4c4c4c),

              ),
              ),
              Text("Lorem ipsum dolor ist, lorem lorenf kajfi faithe dfjlkei gljdfa", style: Theme.of(context).textTheme.bodyText1,),
              const SizedBox(height: 15,),
              CustomButton(onPressed: (){
                // subscribe button function here
              }, buttonText: "Subscribe", width: 350)
            ],
          ),
        ),
      ),
    );
  }
}
