import 'package:delimeals/data/constants/routes.dart';
import 'package:delimeals/config/theme/theme.dart';
import 'package:delimeals/presentation/pages/tabs/tabs_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return MaterialApp(
              title: 'Deli-Meals',
              theme: theme,
              home: const TabsScreen(),
              routes: routes);
        });
  }
}
