import 'package:capstone_frontend/widgets/custom_widgets.dart';
import 'package:flutter/material.dart';

class RegisterTab extends StatelessWidget {
  RegisterTab({Key? key}) : super(key: key);

  final _firstName = TextEditingController();
  final _lastName = TextEditingController();
  final _username = TextEditingController();
  final _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 25,
            vertical: 15,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/fitness-vector.png",
                width: 300,
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  "Let's Get Started...",
                  style: Theme.of(context).textTheme.headline1,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  "Fill in the required fields to start your journey.",
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Form(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomInputField(
                          width: 157,
                          controller: _firstName,
                          hintText: "First Name",
                          hiddenText: false,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        CustomInputField(
                          width: 157,
                          controller: _lastName,
                          hintText: "Last Name",
                          hiddenText: false,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomInputField(
                      width: 325,
                      controller: _username,
                      icon: Icon(Icons.person),
                      hintText: "Username",
                      hiddenText: false,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomInputField(
                      width: 325,
                      controller: _password,
                      icon: Icon(Icons.key),
                      hintText: "Password",
                      hiddenText: true,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomButton(
                      width: 325,
                      onPressed: () {
                        // register function here
                      },
                      buttonText: "Register",
                    ),
                    const SizedBox(
                      height: 25,
                    ),
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
