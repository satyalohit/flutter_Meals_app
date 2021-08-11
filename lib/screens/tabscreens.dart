import 'package:flutter/material.dart';
import 'package:thirdapp/screens/categoryscreen.dart';
import 'package:thirdapp/widgets/drawer.dart';
import 'favoritesscreen.dart';
import './filterscreen.dart';

class Tabscreen extends StatefulWidget {
  @override
  _TabscreenState createState() => _TabscreenState();
}

class _TabscreenState extends State<Tabscreen> {
  final List<Map<String, dynamic>>pages = [
    {'page': Categoriescreen(), 'title': 'Categories',},
    {'page': Favoritesscreen(), 'title': 'Your Favorites',},
  ];
  int selectpageindex = 0;
  void selectpage(int index) {
    setState(() {
      selectpageindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pages[selectpageindex]['title']),
      ),
      drawer: MainDrawer(),
      body: pages[selectpageindex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: selectpage,
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.white,
        selectedItemColor: Theme.of(context).accentColor,
        currentIndex: selectpageindex,
        // type: BottomNavigationBarType.shifting,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.category), title: Text('Categories')),
          BottomNavigationBarItem(
              icon: Icon(Icons.star), title: Text('Favorites')),
        ],
      ),
    );
  }
}
