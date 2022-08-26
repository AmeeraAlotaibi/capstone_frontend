import 'package:capstone_frontend/pages/tabs/login_tab.dart';
import 'package:capstone_frontend/pages/tabs/register_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

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
            labelColor: Theme.of(context).primaryColor,
            labelStyle: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
            unselectedLabelColor: Color.fromARGB(255, 109, 109, 109),
            indicatorColor: Color(0xFF5FA8D3),
            tabs: [
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
