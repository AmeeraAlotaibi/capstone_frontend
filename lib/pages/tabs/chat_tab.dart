import 'package:capstone_frontend/widgets/generic/horizontal_div.dart';
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
                "Adam Scott",
                style: Theme.of(context).textTheme.headline6,
              ),
              const HorizontalLine(),
            ],
          ),
        ),
      ),
    );
  }
}
