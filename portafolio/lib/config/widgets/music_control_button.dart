import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:portafolio/config/Audio/music.dart';

class MusicControlButton extends StatelessWidget {
  final String assetPath;
  const MusicControlButton({required this.assetPath, super.key});

  @override
  Widget build(BuildContext context) {
    final audioService = Provider.of<AudioService>(context);
    return ElevatedButton.icon(
      icon: Icon(
        audioService.isPlaying ? Icons.pause_circle : Icons.play_circle_fill,
        size: 32,
      ),
      label: Text(
        audioService.isPlaying ? 'Pausar música' : 'Reproducir música',
        style: const TextStyle(fontSize: 20),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        elevation: 10,
      ),
      onPressed: () => audioService.togglePlay(assetPath),
    );
  }
}
