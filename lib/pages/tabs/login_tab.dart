import 'package:capstone_frontend/widgets/custom_widgets.dart';
import 'package:flutter/material.dart';

class LoginTab extends StatelessWidget {
  LoginTab({Key? key}) : super(key: key);

  final _username = TextEditingController();
  final _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 25,
            vertical: 15,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                "assets/images/fitness.png",
                width: 175,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Text(
                  "Welcome back, ",
                  style: Theme.of(context).textTheme.headline1,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Text(
                  "Login using the correct username/password combination.",
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Form(
                child: Column(
                  children: [
                    CustomInputField(
                      width: 325,
                      controller: _username,
                      icon: Icon(Icons.person),
                      hintText: "Username",
                      hiddenText: false,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    CustomInputField(
                      width: 325,
                      controller: _password,
                      icon: Icon(Icons.key),
                      hintText: "Password",
                      hiddenText: true,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    CustomButton(
                      width: 325,
                      onPressed: () {
                        // login function here
                      },
                      buttonText: "Login",
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
