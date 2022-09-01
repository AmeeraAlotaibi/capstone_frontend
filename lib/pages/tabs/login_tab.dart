import 'package:capstone_frontend/models/user.dart';
import 'package:capstone_frontend/providers/auth_provider.dart';
import 'package:capstone_frontend/providers/theme_provider.dart';
import 'package:capstone_frontend/widgets/generic/gradient_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class LoginTab extends StatefulWidget {
  LoginTab({Key? key}) : super(key: key);

  @override
  State<LoginTab> createState() => _LoginTabState();
}

class _LoginTabState extends State<LoginTab> {
  final _formKey = GlobalKey<FormState>();

  String _username = "";

  String _password = "";

  bool isPasswordVisible = true;

  @override
  Widget build(BuildContext context) {
    var theme = Provider.of<ThemeProvider>(context);
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
              if (theme.isDarkMode == true)
                Image.asset("assets/images/login-dark.png"),
              if (theme.isDarkMode == false)
                Image.asset("assets/images/login-light.png"),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0),
                child: Text(
                  "Welcome back,",
                  style: Theme.of(context).textTheme.headline1,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  "Login using the correct username/password combination.",
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "* Required";
                        } else {
                          return null;
                        }
                      },
                      onSaved: (value) => _username = value!,
                      decoration: const InputDecoration(
                        hintText: "Username",
                        prefixIcon: Icon(Icons.person),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      obscureText: isPasswordVisible,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "* Required";
                        } else {
                          return null;
                        }
                      },
                      onSaved: (value) => _password = value!,
                      decoration: InputDecoration(
                        hintText: "Password",
                        prefixIcon: const Icon(Icons.key),
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
                    CustomButton(
                      width: 350,
                      onPressed: () async {
                        // login function here
                        if (_formKey.currentState!.validate()) {
                          _formKey.currentState!.save();
                          await context.read<AuthProvider>().login(
                                user: User(
                                  username: _username,
                                  password: _password,
                                ),
                              );

                          context.go("/home");
                        } else {
                          print("Unexpected Error");
                        }
                      },
                      buttonText: "Login",
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
