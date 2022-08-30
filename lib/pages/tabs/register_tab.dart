import 'package:capstone_frontend/models/user.dart';
import 'package:capstone_frontend/providers/auth_provider.dart';
import 'package:capstone_frontend/widgets/generic/gradient_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class RegisterTab extends StatefulWidget {
  RegisterTab({Key? key}) : super(key: key);

  @override
  State<RegisterTab> createState() => _RegisterTabState();
}

class _RegisterTabState extends State<RegisterTab> {
  var _firstName = TextEditingController();

  var _lastName = TextEditingController();

  var _username = TextEditingController();

  var _password = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool isPasswordVisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 25,
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
                key: _formKey,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // **** first name ****
                        Expanded(
                          child: TextFormField(
                            controller: _firstName,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "* Required";
                              } else {
                                return null;
                              }
                            },
                            onSaved: (value) =>
                                _firstName = value! as TextEditingController,
                            decoration: const InputDecoration(
                              hintText: "First Name",
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        // **** last name ****
                        Expanded(
                          child: TextFormField(
                            controller: _lastName,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "* Required";
                              } else {
                                return null;
                              }
                            },
                            onSaved: (value) =>
                                _lastName = value! as TextEditingController,
                            decoration: const InputDecoration(
                              hintText: "Last Name",
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    // **** username ****
                    TextFormField(
                      controller: _username,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "* Required";
                        } else {
                          return null;
                        }
                      },
                      onSaved: (value) =>
                          _username = value! as TextEditingController,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        hintText: "Username",
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    // **** password ****
                    TextFormField(
                      obscureText: isPasswordVisible,
                      controller: _password,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "* Required";
                        } else {
                          return null;
                        }
                      },
                      onSaved: (value) =>
                          _password = value! as TextEditingController,
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.key),
                        hintText: "Password",
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              isPasswordVisible = !isPasswordVisible;
                            });
                          },
                          icon: isPasswordVisible
                              ? const Icon(Icons.visibility)
                              : const Icon(Icons.visibility_off),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    // **** register button ****
                    CustomButton(
                      width: 350,
                      buttonText: "Register",
                      onPressed: () async {
                        if (_formKey.currentState!.validate()) {
                          await context.read<AuthProvider>().register(
                                user: User(
                                  first_name: _firstName.text,
                                  last_name: _lastName.text,
                                  username: _username.text,
                                  password: _password.text,
                                ),
                              );
                          context.go("/home");
                        } else {
                          print("ERROR REGISTERING");
                        }
                      },
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
