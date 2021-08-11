import 'package:flutter/material.dart';
import 'package:thirdapp/widgets/drawer.dart';

class Filterscreen extends StatefulWidget {
  static const routename = '/Filterscreen';

  @override
  _FilterscreenState createState() => _FilterscreenState();
}

class _FilterscreenState extends State<Filterscreen> {
  bool _glutenFree = false;
  bool _vegeterian = false;
  bool _vegan = false;
  bool _lactoseFree = false;

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Your Filters'),
          
        ),
        drawer: MainDrawer(),
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                'Adjust your meal selection',
                style: Theme.of(context).textTheme.title,
              ),
            ),
            Expanded(
                child: ListView(
              children: [
                SwitchListTile(
                    title: Text('Gluten-free'),
                    value: _glutenFree,
                    subtitle: Text('Only include gluten-free meal'),
                    onChanged: (newvalue) {
                      setState(() {
                        _glutenFree = newvalue;
                      });
                    }), SwitchListTile(
                    title: Text('Vegeterian'),
                    value: _vegeterian,
                    subtitle: Text('Only include Vegeterian meal'),
                    onChanged: (newvalue) {
                      setState(() {
                        _vegeterian = newvalue;
                      });
                    }), SwitchListTile(
                    title: Text('Vegan'),
                    value: _vegan,
                    subtitle: Text('Only include Vegan meal'),
                    onChanged: (newvalue) {
                      setState(() {
                        _vegan = newvalue;
                      });
                    }), SwitchListTile(
                    title: Text('Lactose-free'),
                    value: _lactoseFree,
                    subtitle: Text('Only include Lactose-free meal'),
                    onChanged: (newvalue) {
                      setState(() {
                        _lactoseFree = newvalue;
                      });
                    })
              ],
            ))
          ],
        ));
  }
}
