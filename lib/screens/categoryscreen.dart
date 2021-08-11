import 'package:flutter/material.dart';
import '../widgets/dumy.dart';
import '../../widgets/categoryitem.dart';

class Categoriescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
        padding: EdgeInsets.all(10),
        children: DUMMY_CATEGORIES
            .map((e) => Categoryitem(e.id, e.color, e.title))
            .toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
        ));
  }
}
