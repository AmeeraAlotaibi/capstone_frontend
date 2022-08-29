import 'package:capstone_frontend/widgets/profile_components.dart';
import 'package:flutter/material.dart';

class TrainersListPage extends StatelessWidget {
  const TrainersListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("All Trainers"),
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Container() // add a list view builder here
      ),
    );
  }
}