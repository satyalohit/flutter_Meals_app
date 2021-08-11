import 'package:flutter/material.dart';
import '../screens/categoriesmealsscreen.dart';

class Categoryitem extends StatelessWidget {
  final String id;
  final Color color;
  final String title;

  void selectcategory(BuildContext ctx) {
    Navigator.of(ctx)
        .pushNamed(CategoryMealsScreen.routename, arguments: {'id': id, 'title': title},);
  }

  Categoryitem(this.id, this.color, this.title);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        return selectcategory(context);
      },
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(10),
      child: Container(
          padding: const EdgeInsets.all(15),
          child: Text(
            title,
            style: Theme.of(context).textTheme.title,
          ),
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [color.withOpacity(0.7), color],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight),
            borderRadius: BorderRadius.circular(10),
          )),
    );
  }
}
