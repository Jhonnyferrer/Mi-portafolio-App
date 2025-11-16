import 'package:flutter/material.dart';
import 'package:portafolio/config/widgets/my_cards.dart';

class AboutMeScreen extends StatelessWidget {
  final VoidCallback onChangeTheme;
  const AboutMeScreen({super.key, required this.onChangeTheme});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
          tooltip: 'Volver',
        ),
        title: const Text(
          'Acerca de mí',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 14, top: 4),
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/images/logo.jpg"),
              radius: 25,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Stack(
          children: [
            Column(
              children: const [
                CardsSection(),
                SizedBox(height: 50),
                Center(
                  child: Text(
                    'We were too close to the stars candy❤️',
                    style: TextStyle(
                      color: Colors.grey,
                      fontStyle: FontStyle.italic,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              left: 10,
              bottom: 10,
              child: FloatingActionButton(
                heroTag: null,
                mini: true,
                onPressed: onChangeTheme,
                tooltip: 'Cambiar tema',
                child: const Icon(Icons.color_lens),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
