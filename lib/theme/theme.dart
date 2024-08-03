import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    surface: Colors.white,
    primary: Colors.black,
    secondary: Colors.white,
      tertiary: Colors.grey,


  )
);

ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
colorScheme: ColorScheme.dark(
surface: Colors.black,
  primary: Colors.white,
  secondary: Colors.black,
  tertiary: Colors.grey,


),
);
