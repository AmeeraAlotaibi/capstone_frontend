import 'package:flutter/material.dart';
import 'package:skeleton_text/skeleton_text.dart';

class WelcomeCardLoading extends StatelessWidget {
  const WelcomeCardLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SkeletonAnimation(
                child: Container(
                  width: 175,
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Theme.of(context).dividerColor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SkeletonAnimation(
                child: Container(
                  width: 150,
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Theme.of(context).dividerColor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
            ],
          ),
          ClipOval(
            child: SkeletonAnimation(
              child: Container(
                width: 65,
                height: 65,
                color: Theme.of(context).dividerColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
