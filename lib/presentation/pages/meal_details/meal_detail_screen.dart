import 'package:delimeals/data/modles/meal/meal.dart';
import 'package:flutter/material.dart';

class MealDetailScreen extends StatelessWidget {
  static const routeName = '/meal-detail';
  const MealDetailScreen({super.key});

  Meal _getMealModel(BuildContext ctx) {
    final routeArgs =
        ModalRoute.of(ctx)?.settings.arguments as Map<String, Object>;
    final meal = routeArgs['meal'] as Meal;

    return meal;
  }

  Widget _buildMealDetailScreen(BuildContext ctx, Meal meal) {
    return SingleChildScrollView(
      child: Column(
        children: [
          _renderImage(ctx, meal),
          _renderSectionTitle('Ingredients', ctx),
          _renderIngredients(meal),
          _renderSectionTitle('Steps', ctx),
          _renderSteps(meal)
        ],
      ),
    );
  }

  Widget _renderImage(BuildContext ctx, Meal meal) {
    final imageURL = meal.imageURL;
    return SizedBox(
      height: 300,
      width: double.infinity,
      child: Image.network(
        imageURL,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _renderSectionTitle(String text, BuildContext ctx) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Text(
        text,
        style: Theme.of(ctx).textTheme.titleMedium,
      ),
    );
  }

  Widget _renderIngredients(Meal meal) {
    final ingredients = meal.ingredients;
    return _renderContainer(
      ListView.builder(
          itemCount: ingredients.length,
          itemBuilder: (ctx, index) =>
              _makeIngredientsShape(ingredients[index], ctx)),
    );
  }

  Widget _makeIngredientsShape(String ingredient, BuildContext ctx) {
    return Card(
      color: Theme.of(ctx).colorScheme.background,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        child: Text(ingredient),
      ),
    );
  }

  Widget _renderSteps(Meal meal) {
    final steps = meal.steps;
    return _renderContainer(ListView.builder(
      itemCount: steps.length,
      itemBuilder: (ctx, index) => _makeStepsShape(steps, index),
    ));
  }

  Widget _makeStepsShape(List<String> steps, int i) {
    return ListTile(
      leading: CircleAvatar(
        child: Text('# ${i + 1}:'),
      ),
      title: Text(steps[i]),
    );
  }

  Widget _renderContainer(Widget child) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(10),
      height: 150,
      width: 300,
      decoration: _ingredientsContainerDecoraion(),
      child: child,
    );
  }

  BoxDecoration _ingredientsContainerDecoraion() {
    return BoxDecoration(
      color: Colors.white,
      border: Border.all(color: Colors.grey),
      borderRadius: BorderRadius.circular(10),
    );
  }

  @override
  Widget build(BuildContext context) {
    final meal = _getMealModel(context);
    final title = meal.title;
    return Scaffold(
      appBar: AppBar(
        titleTextStyle: Theme.of(context).appBarTheme.titleTextStyle,
        title: Text(title),
      ),
      body: _buildMealDetailScreen(context, meal),
    );
  }
}
