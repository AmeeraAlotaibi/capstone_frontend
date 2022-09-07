import 'package:capstone_frontend/widgets/generic/dividers.dart';
import 'package:capstone_frontend/widgets/generic/section_heading.dart';
import 'package:flutter/material.dart';
import 'package:skeleton_text/skeleton_text.dart';

class ProfileLoading extends StatelessWidget {
  const ProfileLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ClipOval(
          child: SkeletonAnimation(
            child: Container(
              width: 150,
              height: 150,
              color: Theme.of(context).dividerColor,
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SkeletonAnimation(
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    width: 150,
                    height: 20,
                    color: Theme.of(context).dividerColor,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                SkeletonAnimation(
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    width: 150,
                    height: 20,
                    color: Theme.of(context).dividerColor,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            SkeletonAnimation(
              child: Container(
                padding: const EdgeInsets.all(8),
                width: 200,
                height: 20,
                color: Theme.of(context).dividerColor,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SkeletonAnimation(
              child: Container(
                padding: const EdgeInsets.all(8),
                width: double.infinity,
                height: 40,
                color: Theme.of(context).dividerColor,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SkeletonAnimation(
              child: Container(
                padding: const EdgeInsets.all(8),
                width: double.infinity,
                height: 75,
                color: Theme.of(context).dividerColor,
              ),
            ),
            SectionHeadings(
              icon: Icon(
                Icons.monitor_heart,
                color: Theme.of(context).canvasColor,
              ),
              heading: "Statistics",
            ),
            const HorizontalDiv(),
            const SizedBox(
              height: 20,
            ),
            SkeletonAnimation(
              child: Container(
                padding: const EdgeInsets.all(8),
                width: double.infinity,
                height: 100,
                color: Theme.of(context).dividerColor,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
