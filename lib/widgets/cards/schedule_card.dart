import 'package:flutter/material.dart';

class ScheduleCard extends StatelessWidget {
  ScheduleCard({
    Key? key,
    required this.sets,
    required this.workout,
  }) : super(key: key);
  final int sets;
  final String workout;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      width: 200,
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(15),
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
            "${sets} set(s) of",
            style: const TextStyle(
              color: Color(0xFF4c4c4c),
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            workout,
            style: const TextStyle(
              color: Color(0xFF4c4c4c),
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "20 per set",
                style: Theme.of(context).textTheme.subtitle2,
              ),
              Text(
                "10 min",
                style: Theme.of(context).textTheme.subtitle2,
              ),
            ],
          )
        ],
      ),
    );
  }
}
