import 'package:flutter/material.dart';

ThemeData theme = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
    brightness: Brightness.light,
    canvasColor: const Color.fromRGBO(255, 254, 229, 1),
    fontFamily: 'RaleWay',
    textTheme: ThemeData.light().textTheme.copyWith(
          titleSmall: const TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
              fontFamily: 'RobotoCondensed',
              fontSize: 16,
              fontWeight: FontWeight.w700),
          titleMedium: const TextStyle(
            fontFamily: 'RobotoCondensed',
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
          titleLarge: const TextStyle(
            fontFamily: 'RaleWay',
            fontSize: 26,
            // fontWeight: FontWeight.w300,
          ),
          bodySmall: const TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
          bodyMedium: const TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
          bodyLarge: const TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
        ),
    appBarTheme: const AppBarTheme(
        titleTextStyle: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w900,
            color: Colors.black,
            fontFamily: 'RaleWay')));
