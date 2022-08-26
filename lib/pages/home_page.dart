import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final pages = [
    // add actual pages here
    Center(child: Icon(Icons.home)),
    Center(child: Icon(Icons.explore)),
    Center(child: Icon(Icons.chat)),
    Center(child: Icon(Icons.person)),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: _currentIndex == 0
              ? Text("Home")
              : _currentIndex == 1
                  ? Text("Explore")
                  : _currentIndex == 2
                      ? Text("Chat")
                      : _currentIndex == 3
                          ? Text("Profile")
                          : Text("")),
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
