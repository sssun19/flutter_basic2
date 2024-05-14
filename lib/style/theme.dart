import 'package:flutter/material.dart';

final customTheme = ThemeData(
  // colorScheme: const ColorScheme.light(
  //   primary: Colors.indigo,
  //   secondary: Colors.green,
  //   tertiary: Colors.yellow,
  // ),
  // colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
  colorScheme: const ColorScheme.dark(),
  textTheme: const TextTheme(
    bodyLarge: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
  ),
  useMaterial3: true,
  // appBarTheme: const AppBarTheme(
  //   backgroundColor: Colors.red,
  // ),
);