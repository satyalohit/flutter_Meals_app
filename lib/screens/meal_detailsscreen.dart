import 'package:flutter/material.dart';
import '../widgets/dumy.dart';

class MealDetailScreen extends StatelessWidget {
  static const routename = '/Meal-Detail';
  Widget buildtitle(BuildContext context, String text) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Text(
        text,
        style: Theme.of(context).textTheme.title,
      ),
    );
  }

  Widget buildcontainer(child) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(15)),
        width: 300,
        height: 200,
        child: child);
  }

  @override
  Widget build(BuildContext context) {
    final mealid = ModalRoute.of(context)!.settings.arguments as String;
    final selectedmeal =
        DUMMY_MEALS.firstWhere((element) => element.id == mealid);
    return Scaffold(
      appBar: AppBar(
        title: Text(selectedmeal.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 300,
              child: Image.asset(
                selectedmeal.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            buildtitle(context, 'INGREDINETS'),
            buildcontainer(
              ListView.builder(
                itemBuilder: (ctx, index) => Card(
                    color: Theme.of(context).accentColor,
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                      child: Text(selectedmeal.ingredients[index]),
                    )),
                itemCount: selectedmeal.ingredients.length,
              ),
            ),
            buildtitle(context, 'STEPS'),
            buildcontainer(ListView.builder(
              itemBuilder: (ctx, index) => Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      child: Text('${index + 1}'),
                    ),
                    title: Text(selectedmeal.steps[index]),
                  ),
                  Divider(),
                ],
              ),
              itemCount: selectedmeal.steps.length,
            )),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.delete),
        onPressed: () {
          Navigator.of(context).pop(mealid);
        },
      ),
    );
  }
}
