import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_recipes/author_card.dart';
import 'package:flutter_recipes/foodrlichtheme.dart';

class Card2 extends StatelessWidget {
  const Card2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      constraints: BoxConstraints.expand(width: 350, height: 450),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/mag5.png'),
          )),
      child: Column(
        children: [
          AuthorCard(
              authorName: "Mike Katz",
              imageProvider: AssetImage('assets/author_katz.jpeg'),
              title: 'Smoothie Connosisseur'),
          Expanded(
              child: Stack(
            children: [
              Positioned(
                bottom: 16,
                right: 16,
                child: Text(
                  'Recipe',
                  style: FooderlichTheme.lightTextTheme.headline1,
                ),
              ),
              Positioned(
                bottom: 70,
                left: 16,
                child: RotatedBox(
                  quarterTurns: 3,
                  child: Text(
                    'Smoothies',
                    style: FooderlichTheme.lightTextTheme.headline1,
                  ),
                ),
              )
            ],
          ))
        ],
      ),
    ));
  }
}
