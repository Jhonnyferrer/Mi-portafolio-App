import 'package:flutter/material.dart';
import 'package:portafolio/config/theme/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portafolio De Jhonny',
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 5).theme(),
      home: Scaffold(
        appBar: AppBar(title: const Text('Mi portafolio personal')),
        body: Center(
          child: FilledButton.tonal(onPressed: () {}, child: Text('Click me')),
        ),
      ),
    );
  }
}
