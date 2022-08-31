import 'package:capstone_frontend/pages/tabs/login_tab.dart';
import 'package:capstone_frontend/pages/tabs/register_tab.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 0,
          bottom: TabBar(
            indicatorColor: Theme.of(context).primaryColor,
            tabs: const [
              Tab(
                text: "Register",
                iconMargin: EdgeInsets.all(2),
                icon: Icon(
                  Icons.how_to_reg,
                ),
              ),
              Tab(
                text: "Login",
                iconMargin: EdgeInsets.all(2),
                icon: Icon(
                  Icons.login,
                ),
              ),
            ],
          ),
        ),

        // TAB BAR VIEW
        body: TabBarView(
          children: [
            RegisterTab(),
            LoginTab(),
          ],
        ),
      ),
    );
  }
}
