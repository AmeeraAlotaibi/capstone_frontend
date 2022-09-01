import 'package:capstone_frontend/widgets/generic/regular_button.dart';
import 'package:flutter/material.dart';

class SubscriptionCard extends StatelessWidget {
  SubscriptionCard({
    Key? key,
    required this.start_date,
    required this.end_date,
    required this.trainer,
    required this.price,
    required this.onPressed,
  }) : super(key: key);

  final String start_date;
  final String end_date;
  final String trainer;
  final String price;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 30, right: 30, top: 25, bottom: 10),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Starts:",
                style: Theme.of(context).textTheme.subtitle2,
              ),
              Text(
                start_date,
                style: Theme.of(context).textTheme.subtitle2,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Ends:",
                style: Theme.of(context).textTheme.subtitle2,
              ),
              Text(
                end_date,
                style: Theme.of(context).textTheme.subtitle2,
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            "\$${price} /month",
            style: Theme.of(context).textTheme.headline1,
          ),
          Text(
            "To: ${trainer}",
            style: Theme.of(context).textTheme.headline6,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GenericButton(
                width: 70,
                onPressed: onPressed,
                buttonText: "Cancel",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
