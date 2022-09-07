import 'package:flutter/material.dart';
import 'package:skeleton_text/skeleton_text.dart';

class HomeCardLoading extends StatelessWidget {
  const HomeCardLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SkeletonAnimation(
      child: Container(
        height: 156,
        width: double.infinity,
        color: Theme.of(context).dividerColor,
      ),
    );
  }
}
