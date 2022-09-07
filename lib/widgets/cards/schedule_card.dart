import 'package:flutter/material.dart';

class ScheduleCard extends StatelessWidget {
  ScheduleCard({
    Key? key,
    required this.sets,
    required this.reps,
    required this.time,
    required this.done,
    required this.workout,
    required this.onTap,
     this.date,

  }) : super(key: key);
  final int sets;
  final int reps;
  final String time;
  final String workout;
   String? date;
  final bool done;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      splashColor: Colors.white.withOpacity(0.5),
      highlightColor: Colors.black.withOpacity(0.5),
      child: Ink(
        // padding: const EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          color:Theme.of(context).scaffoldBackgroundColor,
          border: Border.all(
            color:done?Colors.green:  Theme.of(context).dividerColor,
            width: 1,
          ),
        ),
      child: Container(
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
            ),
            date != null?Padding(
              padding: const EdgeInsets.only(top:30.0),
              child: Text(date!,style: Theme.of(context).textTheme.subtitle2,),
            ):const SizedBox(height: 0,)
          ],
        ),
      ),
    ));
  }
}
