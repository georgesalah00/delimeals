import 'package:delimeals/data/test_data/dummy_data.dart';
import 'package:delimeals/presentation/widgets/category_widgets/category_item.dart';
import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  final categoriesGroup = DUMMY_CATEGORIES;

  Widget _buildGridView() => GridView(
      padding: const EdgeInsets.all(25),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          childAspectRatio: 3 / 2),
      children: _makeCategories(categoriesGroup));

  List<Widget> _makeCategories(List categories) =>
      categories.map((category) => CategoryItem(category)).toList();

  @override
  Widget build(BuildContext context) {
    return _buildGridView();
  }
}
