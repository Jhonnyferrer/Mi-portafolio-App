import 'package:flutter/material.dart';
import 'package:portafolio/config/widgets/music_control_button.dart';
import 'about_me_screen.dart';

class HomeScreen extends StatefulWidget {
  final VoidCallback onChangeTheme;
  const HomeScreen({super.key, required this.onChangeTheme});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void _goToAboutMe() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => AboutMeScreen(onChangeTheme: widget.onChangeTheme),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Mi Portafolio personal',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            letterSpacing: 1.2,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/fondo_home.jpg'),
            fit: BoxFit.cover,
            opacity: 0.3,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Spacer(),

              ElevatedButton.icon(
                icon: const Icon(Icons.info_outline, size: 28),
                label: const Text(
                  'Acerca de mí',
                  style: TextStyle(fontSize: 20),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 14,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  elevation: 8,
                ),
                onPressed: _goToAboutMe,
              ),

              const SizedBox(height: 20),

              const MusicControlButton(assetPath: 'assets/sounds/musica.mp3'),

              const Spacer(),
              Card(
                elevation: 6,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: ListTile(
                  leading: const Icon(
                    Icons.contact_mail,
                    color: Colors.deepPurple,
                    size: 36,
                  ),
                  title: const Text(
                    'Información de contacto',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      SizedBox(height: 4),
                      Text(
                        'Correo: jhonnyferrer2022@gmail.com',
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        'Teléfono: +58 4120943834',
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
