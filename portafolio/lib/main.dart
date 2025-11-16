import 'package:flutter/material.dart';
import 'package:portafolio/config/theme/app_theme.dart';
import 'config/screens/home_screen.dart';

void main() => runApp(const JPApp());

class JPApp extends StatelessWidget {
  const JPApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portafolio De Jhonny',
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 5).theme(),
      home: const HomeScreen(),
    );
  }
}
