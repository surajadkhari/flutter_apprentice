import 'package:flutter/material.dart';
import 'package:flutter_recipes/models/recipemodel.dart';

class RecipeDetail extends StatefulWidget {
  late RecipeModel recipe;

  RecipeDetail({required this.recipe});

  @override
  _RecipeDetailState createState() => _RecipeDetailState();
}

class _RecipeDetailState extends State<RecipeDetail> {
  int _sliderVal = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.recipe.lable),
      ),
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image(image: AssetImage(widget.recipe.imageURL)),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(widget.recipe.lable),
          // 7
          Expanded(
            // 8
            child: ListView.builder(
              padding: const EdgeInsets.all(7.0),
              itemCount: widget.recipe.ingredients.length,
              itemBuilder: (BuildContext context, int index) {
                final ingredient = widget.recipe.ingredients[index];
                // 9
                // TODO: Add ingredient.quantity
                return Text(
                    '${ingredient.quantity * _sliderVal} ${ingredient.measure} ${ingredient.name}');
              },
            ),
          ),
          Slider(
            min: 1,
            max: 10,
            divisions: 10,
            label: '${_sliderVal * widget.recipe.servings} serving',
            value: _sliderVal.toDouble(),
            onChanged: (newValue) {
              setState(() {
                _sliderVal = newValue.round();
              });
            },
            activeColor: Colors.green,
            inactiveColor: Colors.black,
          )
        ],
      )),
    );
  }
}
