import 'package:delimeals/config/constants/routes.dart';
import 'package:delimeals/config/theme/theme.dart';
import 'package:delimeals/presentation/pages/categories_screen/categories_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Deli-Meals',
        theme: theme,
        home: const CategoriesScreen(),
        routes: routes);
  }
}
