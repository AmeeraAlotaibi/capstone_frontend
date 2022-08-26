import 'package:flutter/material.dart';

class ScheduleCard extends StatelessWidget {
  ScheduleCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 25),
      width: 350,
      height: 175,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Text("Container"),
    );
  }
}
