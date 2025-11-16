import 'package:flutter/material.dart';
import 'package:portafolio/config/theme/app_theme.dart';
import 'config/screens/home_screen.dart';

void main() {
  runApp(const JPApp());
}

class JPApp extends StatefulWidget {
  const JPApp({super.key});

  @override
  State<JPApp> createState() => _JPAppState();
}

class _JPAppState extends State<JPApp> {
  int selectedColorIndex = 0;

  void changeTheme() {
    setState(() {
      selectedColorIndex =
          (selectedColorIndex + 1) % AppTheme.colorThemes.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portafolio De Jhonny',
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: selectedColorIndex).theme(),
      home: HomeScreen(changeTheme: changeTheme),
    );
  }
}
