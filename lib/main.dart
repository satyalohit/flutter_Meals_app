import 'package:flutter/material.dart';
import 'package:thirdapp/screens/categoryscreen.dart';
import 'screens/categoryscreen.dart';
import 'screens/categoriesmealsscreen.dart';
import './screens/meal_detailsscreen.dart';
import './screens/tabscreens.dart';
import './screens/filterscreen.dart';

void main() {
  return runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Diet",
      theme: ThemeData(
          primarySwatch: Colors.pink,
          accentColor: Colors.amber,
          canvasColor: Colors.white,
          fontFamily: 'Raleway',
          textTheme: ThemeData.light().textTheme.copyWith(
              body1: TextStyle(color: Colors.black26),
              body2: TextStyle(color: Colors.black87),
              title: TextStyle(
                  fontSize: 20,
                  fontFamily: 'RobotoCondensed',
                  fontWeight: FontWeight.bold))),
      // home: Categoriescreen(),
        initialRoute: '/',
      routes: {
        '/': (ctx) => Tabscreen(),
        CategoryMealsScreen.routename: (ctx) => CategoryMealsScreen(),
        MealDetailScreen.routename:(ctx)=>MealDetailScreen(),
        Filterscreen.routename:(ctx)=>Filterscreen()
      },
    );
  }
}
