import 'package:capstone_frontend/widgets/generic/dividers.dart';
import 'package:flutter/material.dart';

class ChatTab extends StatelessWidget {
  const ChatTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                "Geralt of Rivia",
                style: Theme.of(context).textTheme.headline6,
              ),
              const HorizontalDiv(),
            ],
          ),
        ),
      ),
    );
  }
}
