import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

ThemeData theme = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
    brightness: Brightness.light,
    canvasColor: const Color.fromRGBO(255, 254, 229, 1),
    fontFamily: 'RaleWay',
    textTheme: ThemeData.light().textTheme.copyWith(
          titleSmall: TextStyle(
              color: const Color.fromRGBO(20, 51, 51, 1),
              fontFamily: 'RobotoCondensed',
              fontSize: 16.sp,
              fontWeight: FontWeight.w700),
          titleMedium: TextStyle(
            fontFamily: 'RobotoCondensed',
            fontSize: 20.sp,
            fontWeight: FontWeight.w700,
          ),
          titleLarge: TextStyle(
            fontFamily: 'RaleWay',
            fontSize: 26.sp,
            // fontWeight: FontWeight.w300,
          ),
          bodySmall: const TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
          bodyMedium: TextStyle(
            color: const Color.fromRGBO(20, 51, 51, 1),
            fontSize: 14.sp,
            fontFamily: 'RobotoCondensed',
          ),
          bodyLarge: const TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
        ),
    appBarTheme: AppBarTheme(
        titleTextStyle: TextStyle(
            fontSize: 26.sp,
            fontWeight: FontWeight.w900,
            color: Colors.black,
            fontFamily: 'RaleWay')));
