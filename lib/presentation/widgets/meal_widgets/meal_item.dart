import 'package:delimeals/data/modles/meal/meal.dart';
import 'package:delimeals/presentation/pages/meal_details/meal_detail_screen.dart';
import 'package:flutter/material.dart';

class MealItem extends StatelessWidget {
  final Meal _meal;

  const MealItem(this._meal, {super.key});

  Widget _makeMealWidget(BuildContext ctx) {
    return InkWell(
      onTap: () => _goToMealDetailScreen(ctx),
      splashColor: Theme.of(ctx).colorScheme.primary, 
      child: _makeMealCard(ctx),);
  }

  _goToMealDetailScreen(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(
      MealDetailScreen.routeName,
      arguments: {
        'meal' : _meal 
      }
    );
  }

  Widget _makeMealCard(BuildContext ctx) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 4,
      margin: const EdgeInsets.all(10.0),
      child: _makeMealIngredients(ctx),
    );
  }

  Widget _makeMealIngredients(BuildContext ctx) {
    return Column(children: [_setupMealImageStack(ctx), _setupMealInfoRow()]);
  }

  Widget _setupMealImageStack(BuildContext ctx) {
    return Stack(
      children: [
        _setupMealImage(),
        Positioned(
          bottom: 20,
          right: 10,
          child: _setupMealTitle(ctx),
        ),
      ],
    );
  }

  Widget _setupMealImage() {
    final imageURL = _meal.imageURL;
    return ClipRRect(
      borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(15), topRight: Radius.circular(15)),
      child: Image.network(
        imageURL,
        height: 250,
        width: double.infinity,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _setupMealTitle(BuildContext ctx) {
    final title = _meal.title;
    return Container(
      width: 280,
      color: Colors.black54,
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
      child: Text(
        title,
        style:
            Theme.of(ctx).textTheme.titleLarge?.copyWith(color: Colors.white),
        softWrap: true,
        overflow: TextOverflow.fade,
      ),
    );
  }

  Widget _setupMealInfoRow() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _setupMealSchedualInfo(),
          _setupMealComplexityInfo(),
          _setupMealAffordabilityInfo()
        ],
      ),
    );
  }

  Widget _setupMealSchedualInfo() {
    final duration = _meal.duration;
    return Row(
      children: [
        const Icon(Icons.schedule),
        const SizedBox(width: 6.0),
        Text('$duration')
      ],
    );
  }

  Widget _setupMealComplexityInfo() {
    final complexity = _meal.complexity;
    return Row(
      children: [
        const Icon(Icons.work),
        const SizedBox(width: 6.0),
        Text(complexity.name)
      ],
    );
  }

  Widget _setupMealAffordabilityInfo() {
    final affordability = _meal.affordability;
    return Row(
      children: [
        const Icon(Icons.attach_money),
        const SizedBox(width: 6.0),
        Text(affordability.name)
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return _makeMealWidget(context);
  }
}
