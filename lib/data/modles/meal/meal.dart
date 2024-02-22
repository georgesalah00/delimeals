// ignore: constant_identifier_names
enum Complexity { Simple, Challenging, Hard }

// ignore: constant_identifier_names
enum Affordability { Affordable, Pricey, Luxurious }

class Meal {
  final String id;
  final List<String> categoryIds;
  final String imageURL;
  final String title;
  final List<String> ingredients;
  final List<String> steps;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;
  final bool isGlutenFree;
  final bool isLactoseFree;
  final bool isVegan;
  final bool isVegetarian;

 const Meal(
      {required this.affordability,
      required this.id,
      required this.categoryIds,
      required this.imageURL,
      required this.title,
      required this.ingredients,
      required this.steps,
      required this.duration,
      required this.complexity,
      required this.isGlutenFree,
      required this.isLactoseFree,
      required this.isVegan,
      required this.isVegetarian});
}
