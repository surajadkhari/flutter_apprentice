import 'package:flutter/material.dart';
import 'package:flutter_recipes/foodrlichtheme.dart';

import 'homepage.dart';

void main() {
  runApp(Foodrlich());
}

class Foodrlich extends StatelessWidget {
  const Foodrlich({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final apptheme = FooderlichTheme.dark();

    // TODO: Apply Home widget
    return MaterialApp(theme: apptheme, home: Home());
  }
}
