import 'package:delimeals/data/test_data/dummy_data.dart';
import 'package:delimeals/data/modles/meal/meal.dart';
import 'package:delimeals/presentation/widgets/meal_widgets/meal_item.dart';
import '../../../data/modles/category/category_model.dart';
import 'package:flutter/material.dart';

class MealsScreen extends StatelessWidget {
  static const routeName = '/category-meals';

  const MealsScreen({super.key});

  CategoryModel _getScreenCategory(BuildContext ctx) {
    final routeArgs =
        ModalRoute.of(ctx)?.settings.arguments as Map<String, Object>;
    final category = routeArgs['category'] as CategoryModel;

    return category;
  }

  List<Meal> _getFilteredDummyMeals(CategoryModel category) {
    return DUMMY_MEALS
        .where((meal) => meal.categoryIds.contains(category.id))
        .toList();
  }

  Widget _buildMealsScreen(BuildContext ctx, List<Meal> meals) {
    return ListView.builder(
        itemCount: meals.length,
        itemBuilder: (ctx, index) {
          return MealItem(meals[index]);
        });
  }

  @override
  Widget build(BuildContext context) {
    final category = _getScreenCategory(context);
    final title = category.title;
    final dummyMeals = _getFilteredDummyMeals(category);

    return Scaffold(
        appBar: AppBar(
          titleTextStyle: Theme.of(context).appBarTheme.titleTextStyle,
          title: Text('$title recipes'),
        ),
        body: _buildMealsScreen(context, dummyMeals));
  }
}
