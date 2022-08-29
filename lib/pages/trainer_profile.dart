import 'package:capstone_frontend/widgets/profile_components.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

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
            children: [
              // beginning of avatar card
              TrainerProfileCard(
                avatar:
                    "https://cdnb.artstation.com/p/assets/images/images/001/863/575/medium/irakli-nadar-artstation-da.jpg?1453903033",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
