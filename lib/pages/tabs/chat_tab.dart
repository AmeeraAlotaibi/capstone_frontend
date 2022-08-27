import 'package:capstone_frontend/widgets/profile_components.dart';
import 'package:flutter/material.dart';

class ChatTab extends StatelessWidget {
  const ChatTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            margin: const EdgeInsets.only(top: 125),
            child: Column(
              children: [
                Text(
                  "Adam Scott",
                  style: Theme.of(context).textTheme.headline6,
                ),
                const HorizontalLine(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
