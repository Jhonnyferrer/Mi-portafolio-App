import 'package:flutter/material.dart';

const Color _customColor = Color(0xFF0C13C2);

const List<Color> _colorThemes = [
  _customColor,
  Colors.lightBlueAccent,
  Colors.greenAccent,
  Colors.redAccent,
  Colors.pinkAccent,
  Colors.yellowAccent,
  Colors.deepPurple,
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
    : assert(
        selectedColor >= 0 && selectedColor <= _colorThemes.length,
        'Colors debe ser entre 0 y ${_colorThemes.length}',
      );

  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorThemes[selectedColor],
    );
  }
}
