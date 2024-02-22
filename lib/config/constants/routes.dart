import 'package:delimeals/presentation/pages/meal_details/meal_detail_screen.dart';
import 'package:delimeals/presentation/pages/meals/meals_screen.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {
  MealsScreen.routeName: (ctx) => const MealsScreen(),
  MealDetailScreen.routeName: (ctx) => const MealDetailScreen()
};

