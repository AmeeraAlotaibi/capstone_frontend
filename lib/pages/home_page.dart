import 'package:capstone_frontend/pages/tabs/chat_tab.dart';
import 'package:capstone_frontend/pages/tabs/explore_tab.dart';
import 'package:capstone_frontend/pages/tabs/home_tab.dart';
import 'package:capstone_frontend/pages/tabs/profile_tab.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final pages = [
    HomeTab(),
    ExploreTab(),
    ChatTab(),
    ProfileTab(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: _currentIndex == 0
            ? const Text("Home")
            : _currentIndex == 1
                ? const Text("Explore")
                : _currentIndex == 2
                    ? const Text("Chat")
                    : _currentIndex == 3
                        ? const Text("Profile")
                        : const Text(""),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: GestureDetector(
              onTap: () {
                // logout function here
              },
              child: Icon(Icons.logout),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: "Explore",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: "Chat",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
      body: pages[_currentIndex],
    );
  }
}
