import 'package:flutter/material.dart';

const Color _customColor = Color(0xFF0C13C2);

// Lista de colores disponibles para el tema
const List<Color> _colorThemes = [
  _customColor,
  Colors.lightBlueAccent,
  Colors.greenAccent,
  Colors.redAccent,
  Colors.pinkAccent,
  Colors.yellowAccent,
  Colors.deepPurple,
  Colors.cyan,
  Colors.red,
  Colors.amberAccent,
  Colors.pink,
  Colors.orange,
  Colors.lightGreenAccent,
  Colors.green,
];

class AppTheme {
  static const List<Color> colorThemes = _colorThemes;

  final int selectedColor;

  AppTheme({this.selectedColor = 0})
    : assert(
        selectedColor >= 0 && selectedColor < colorThemes.length,
        'selectedColor debe ser un índice válido entre 0 y ${colorThemes.length - 1}',
      );

  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: colorThemes[selectedColor],
    );
  }
}
