import 'package:delimeals/presentation/pages/categories_screen/categories_screen.dart';
import 'package:delimeals/presentation/pages/favourites_screen/favourites_screen.dart';
import 'package:delimeals/presentation/widgets/main_drawer/main_drawer.dart';
import 'package:flutter/material.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  static const List<Map<String, Object>> _pages = [
    {'page': CategoriesScreen(), 'title': 'Categories'},
    {'page': FavouritesScreen(), 'title': 'Your Favourite Meals'}
  ];
  int _selectedPageIndex = 0;

  BottomNavigationBar _buildBottomNavigationBar(BuildContext ctx) {
    return BottomNavigationBar(
        selectedItemColor: Theme.of(ctx).colorScheme.primary,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.shifting,
        currentIndex: _selectedPageIndex,
        onTap: _goToNavigationBarPages,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Theme.of(ctx).colorScheme.background,
            icon: const Icon(Icons.category),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(ctx).colorScheme.background,
            icon: const Icon(Icons.star),
            label: 'Favourites',
          ),
        ]);
  }

  void _goToNavigationBarPages(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: Text(_pages[_selectedPageIndex]['title'] as String),
    );
  }



  Widget _buildPage() {
    return _pages[_selectedPageIndex]['page'] as Widget;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      drawer: MainDrawer(),
      body: _buildPage(),
      bottomNavigationBar: _buildBottomNavigationBar(context),
    );
  }
}
