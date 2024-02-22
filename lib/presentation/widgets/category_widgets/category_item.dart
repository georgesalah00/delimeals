import 'package:delimeals/presentation/pages/meals/meals_screen.dart';

import '../../../data/modles/category/category_model.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final CategoryModel _category;
  const CategoryItem(this._category, {super.key});

  Widget _makeCategoryItem(BuildContext ctx) {
    final title = _category.title;
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: _styleCategoryItem(),
      child: Text(
        title,
        style: Theme.of(ctx).textTheme.titleMedium,
      ),
    );
  }

  BoxDecoration _styleCategoryItem() {
    final color = _category.color;
    return BoxDecoration(
        color: color,
        gradient: LinearGradient(
          colors: [color.withOpacity(0.7), color],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(15));
  }

  void _goToCategoryMealsPage(BuildContext ctx) {
    Navigator.of(ctx)
        .pushNamed(MealsScreen.routeName, arguments: {'category': _category});
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
        borderRadius: BorderRadius.circular(15),
        onTap: () => _goToCategoryMealsPage(context),
        splashColor: Theme.of(context).colorScheme.primary,
        child: _makeCategoryItem(context));
  }
}
