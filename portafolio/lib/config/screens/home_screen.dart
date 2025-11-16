import 'package:flutter/material.dart';
import 'about_me_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Mi portafolio personal')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const AboutMeScreen()),
            );
          },
          child: const Text('Acerca de mí'),
        ),
      ),
    );
  }
}
