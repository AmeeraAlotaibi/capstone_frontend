import 'package:capstone_frontend/widgets/generic/dividers.dart';
import 'package:flutter/material.dart';

class DetailsContainer extends StatelessWidget {
  DetailsContainer({
    Key? key,
    required this.title1,
    required this.subtitle1,
    required this.title2,
    required this.subtitle2,
    required this.title3,
    required this.subtitle3,
  }) : super(key: key);

  final String title1;
  final String subtitle1;
  final String title2;
  final String subtitle2;
  final String title3;
  final String subtitle3;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title1,
                style: Theme.of(context).textTheme.bodyText2,
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                subtitle1,
                style: Theme.of(context).textTheme.headline6,
              ),
            ],
          ),
          // divider
          const VerticalDiv(),

          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title2,
                style: Theme.of(context).textTheme.bodyText2,
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                subtitle2,
                style: Theme.of(context).textTheme.headline6,
              ),
            ],
          ),

          const VerticalDiv(),

          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title3,
                style: Theme.of(context).textTheme.bodyText2,
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                subtitle3,
                style: Theme.of(context).textTheme.headline6,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
