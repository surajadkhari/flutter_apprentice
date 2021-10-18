import 'package:flutter/material.dart';
import 'package:flutter_recipes/models/recipemodel.dart';

import 'recipe_detail.dart';

void main() {
  runApp(RecipeApp());
}

class RecipeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Recipe Calculator",
      theme: theme.copyWith(
          colorScheme: theme.colorScheme.copyWith(primary: Colors.grey)),
      home: MyHomePage(
        title: "Recipe Calculator",
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  String title;
  MyHomePage({required this.title});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
          child: ListView.builder(
              itemCount: RecipeModel.samples.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return RecipeDetail(
                          recipe: RecipeModel.samples[index],
                        );
                      }));
                    },
                    child: buildRecipeCard(RecipeModel.samples[index]));
              })),
    );
  }
}

Widget buildRecipeCard(RecipeModel recipe) {
  return Card(
    elevation: 3.0,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Image(image: AssetImage(recipe.imageURL)),
          SizedBox(
            height: 14,
          ),
          Text(
            recipe.lable,
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                fontFamily: 'Poppins'),
          )
        ],
      ),
    ),
  );
}
