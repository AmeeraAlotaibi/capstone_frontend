import 'package:flutter/material.dart';

class ScheduleCard extends StatelessWidget {
  ScheduleCard({
    Key? key,
    required this.sets,
    required this.reps,
    required this.time,
    required this.workout,
  }) : super(key: key);
  final int sets;
  final int reps;
  final String time;
  final String workout;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      width: 200,
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(
            Icons.push_pin_rounded,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            "$sets set(s) of",
            style: Theme.of(context).textTheme.headline6,
          ),
          Text(
            workout,
            style: Theme.of(context).textTheme.headline4,
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "$reps per set",
                style: Theme.of(context).textTheme.subtitle2,
              ),
              Text(
                "$time min",
                style: Theme.of(context).textTheme.subtitle2,
              ),
            ],
          )
        ],
      ),
    );
  }
}
