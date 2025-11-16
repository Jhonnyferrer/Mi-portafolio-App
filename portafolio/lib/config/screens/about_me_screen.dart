import 'package:flutter/material.dart';

class AboutMeScreen extends StatelessWidget {
  const AboutMeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: AssetImage("assets/images/logo.jpg"),
          ),
        ),
        title: Text('Acerca de mi'),
        centerTitle: true,
      ),
      body: _MeView(),
    );
  }
}

class _MeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(child: Container()),

            Text('We were too close to the stars candy❤️'),
          ],
        ),
      ),
    );
  }
}
