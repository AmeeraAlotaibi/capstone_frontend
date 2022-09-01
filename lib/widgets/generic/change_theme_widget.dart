import 'package:capstone_frontend/providers/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_switch/flutter_switch.dart';

class ChangeThemeButton extends StatelessWidget {
  const ChangeThemeButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return FlutterSwitch(
      width: 50,
      height: 35,
      value: themeProvider.isDarkMode,
      onToggle: (value) {
        final provider = Provider.of<ThemeProvider>(context, listen: false);
        provider.toggleTheme(value);
      },
      activeColor: Theme.of(context).cardColor,
      inactiveColor: Theme.of(context).secondaryHeaderColor,
      activeIcon: Icon(
        Icons.light_mode,
        color: Theme.of(context).secondaryHeaderColor,
      ),
      inactiveIcon: Icon(
        Icons.dark_mode,
        color: Theme.of(context).secondaryHeaderColor,
      ),
    );
  }
}
