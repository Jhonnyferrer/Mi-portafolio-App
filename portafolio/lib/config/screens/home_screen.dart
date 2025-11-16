import 'package:flutter/material.dart';
import 'about_me_screen.dart';

class HomeScreen extends StatelessWidget {
  final VoidCallback changeTheme;

  const HomeScreen({super.key, required this.changeTheme});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Mi portafolio personal')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AboutMeScreen(onChangeTheme: changeTheme),
              ),
            );
          },
          child: const Text('Acerca de mí'),
        ),
      ),
    );
  }
}
