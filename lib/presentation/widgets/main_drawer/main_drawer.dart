import 'package:delimeals/presentation/pages/filters_screen/filters_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  Widget _buildDrawerContent(BuildContext ctx) {
    return Column(
      children: [
        _buildHeading(ctx),
        SizedBox(
          height: 10.h,
        ),
        _buildTile(ctx, 'Meals', Icons.restaurant, _goToMeals),
        SizedBox(
          height: 10.h,
        ),
        _buildTile(
            ctx, 'Filters', Icons.filter_list_rounded, _goToFiltersScreen)
      ],
    );
  }

  Widget _buildHeading(BuildContext ctx) {
    return Container(
      height: 100.h,
      padding: EdgeInsets.all(20.w),
      alignment: Alignment.centerLeft,
      color: Theme.of(ctx).colorScheme.primary,
      child: Text(
        'Cooking Up!',
        style:
            Theme.of(ctx).textTheme.titleLarge?.copyWith(color: Colors.white),
      ),
    );
  }

  Widget _buildTile(
      BuildContext ctx, String title, IconData icon, Function tapHandler) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26.sp,
        color: Theme.of(ctx).colorScheme.primary,
      ),
      title: Text(
        title,
        style: Theme.of(ctx).textTheme.titleMedium,
      ),
      onTap: () => tapHandler(ctx),
    );
  }

  void _goToMeals(BuildContext ctx) {
    Navigator.of(ctx).pushNamed('/');
  }

  void _goToFiltersScreen(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(FiltersScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: _buildDrawerContent(context),
    );
  }
}
