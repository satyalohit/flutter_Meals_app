import 'package:flutter/material.dart';
import 'package:thirdapp/screens/filterscreen.dart';

class MainDrawer extends StatelessWidget {
  Widget buildListtile(BuildContext ctx,String text, IconData icon, ) {
    return ListTile(
      leading: Icon(icon, size: 26),
      title: Text(
        text,
        style: TextStyle(
          fontFamily: 'RobotoCondensed',
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: (){Navigator.of(ctx).pushNamed(Filterscreen.routename);},
    );
  }

  // void selectcategory(BuildContext ctx) {
  //   Navigator.of(ctx).pushNamed(Filterscreen.routename);
  // }

  // void selectcategory1(BuildContext ctx) {
  //   Navigator.of(ctx).pushNamed('/');
  // }

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
      children: [
        Container(
          height: 120,
          width: double.infinity,
          padding: EdgeInsets.all(20),
          alignment: Alignment.centerLeft,
          color: Theme.of(context).accentColor,
          child: Text('Cooking UP',
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 30,
                  color: Theme.of(context).primaryColor)),
        ),
        SizedBox(
          height: 20,
        ),
        // buildListtile(context,'Meals', Icons.restaurant,),
        // buildListtile(context,'Filters', Icons.settings),
        ListTile(
      leading: Icon(Icons.restaurant, size: 26),
      title: Text(
        'Meals',
        style: TextStyle(
          fontFamily: 'RobotoCondensed',
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: (){Navigator.of(context).pushReplacementNamed('/');},
    ),
      ListTile(
      leading: Icon(Icons.settings, size: 26),
      title: Text(
        'Filters',
        style: TextStyle(
          fontFamily: 'RobotoCondensed',
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: (){Navigator.of(context).pushReplacementNamed(Filterscreen.routename);},
    ),
    
      ],
    ));
  }
}
