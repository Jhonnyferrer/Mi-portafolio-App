import 'package:flutter/material.dart';
import 'package:portafolio/config/social/red_social.dart';
import 'package:portafolio/config/widgets/top3_game_card.dart';

class CardsSection extends StatelessWidget {
  const CardsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final redSocial = RedSocial('https://www.facebook.com/jhonny.ferrer.11490');

    return Column(
      children: [
        _CustomCard(
          icon: Icons.person,
          iconColor: Colors.blueAccent,
          title: 'Jhonny Adrian Ferrer Martinez',
          subtitle: 'Estudiante de ingeniería de sistemas',
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
          ),
        ),
        _CustomCard(
          icon: Icons.info_outline,
          iconColor: Colors.green,
          title: 'Sobre mí',
          subtitle:
              'Tengo 21 años, me gustan mucho los videojuegos, el fútbol, el anime, aprender cosas útiles y amo pasar tiempo con mi novia',
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
        ),
        _CustomCard(
          icon: Icons.sports_esports,
          iconColor: Colors.purple,
          title: 'Hobbies',
          subtitle:
              'Jugar videojuegos, ver anime, jugar futbol, ir al Gym y leer',
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
        ),
        _CustomCard(
          icon: Icons.favorite,
          iconColor: Colors.pink,
          title: 'Comprometido',
          subtitle: 'Con Dulce María',
          image: AssetImage('assets/images/dulcesita.jpeg'),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
        ),
        _CustomCard(
          icon: Icons.business_center,
          iconColor: Colors.teal,
          title: 'Trabajo actual',
          subtitle:
              'Actualmente estoy dessarrollando un sistema para una empresa, el cual ayudara a mejorar la capacitacion de los nuevos trabajadores de soporte tecnico',
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
        ),
        const GameRankingCard(),
        _CustomCard(
          icon: Icons.facebook,
          iconColor: Colors.blue,
          title: 'Facebook',
          subtitle: 'Mi perfil de facebook',
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
          ),
          button: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blueAccent,
              foregroundColor: Colors.white,
            ),
            onPressed: () => redSocial.abrirEnlace(),
            child: const Icon(Icons.open_in_browser),
          ),
        ),
      ],
    );
  }
}

class _CustomCard extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final String title;
  final String subtitle;
  final Widget? button;
  final ImageProvider? image;
  final ShapeBorder? shape;

  const _CustomCard({
    required this.icon,
    required this.iconColor,
    required this.title,
    required this.subtitle,
    this.button,
    this.image,
    this.shape,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.symmetric(vertical: 8),
      shape:
          shape ??
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: ListTile(
        leading: image != null
            ? CircleAvatar(backgroundImage: image, radius: 22)
            : Icon(icon, color: iconColor, size: 28),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(subtitle),
        trailing: button,
      ),
    );
  }
}
