import 'package:flutter/material.dart';

const colorList = [
  Colors.blue,
  Colors.green,
  Colors.red
];

class AppTheme {

  final int selectedColor;

  AppTheme({
    this.selectedColor = 0
  }) : assert (
    selectedColor >= 0
  ),
  assert (
    selectedColor < colorList.length
  );

  ThemeData getTheme() => ThemeData(
    useMaterial3: true,
    colorSchemeSeed: colorList[ selectedColor ],
    appBarTheme: AppBarTheme(
      centerTitle: false
    )
  );
}