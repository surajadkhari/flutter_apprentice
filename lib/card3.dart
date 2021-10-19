import 'package:flutter/material.dart';
import 'package:flutter_recipes/foodrlichtheme.dart';

class Card3 extends StatelessWidget {
  const Card3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      constraints: BoxConstraints.expand(height: 450, width: 350),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
              image: AssetImage('assets/mag2.png'), fit: BoxFit.cover)),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.6),
                borderRadius: BorderRadius.circular(10)),
          ),
          Container(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.book,
                  color: Colors.white,
                  size: 40,
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'Recipe Trends',
                  style: FooderlichTheme.darkTextTheme.headline2,
                ),
                SizedBox(
                  height: 30,
                )
              ],
            ),
          ),
          Center(
            child: Wrap(alignment: WrapAlignment.start, spacing: 12, children: [
              Chip(
                label: Text(
                  'Healthy',
                  style: FooderlichTheme.darkTextTheme.bodyText1,
                ),
                onDeleted: () {
                  print('Delete');
                },
              ),
              Chip(
                label: Text(
                  'Vegan',
                  style: FooderlichTheme.darkTextTheme.bodyText1,
                ),
                onDeleted: () {
                  print('Delete');
                },
              ),
              Chip(
                label: Text(
                  'Carrots',
                  style: FooderlichTheme.darkTextTheme.bodyText1,
                ),
                onDeleted: () {
                  print('Delete');
                },
              ),
              Chip(
                label: Text(
                  'Greens',
                  style: FooderlichTheme.darkTextTheme.bodyText1,
                ),
              ),
              Chip(
                label: Text(
                  'Wheat',
                  style: FooderlichTheme.darkTextTheme.bodyText1,
                ),
              ),
              Chip(
                  label: Text(
                'Pescetarian',
                style: FooderlichTheme.darkTextTheme.bodyText1,
              )),
              Chip(
                  label: Text(
                'Mint',
                style: FooderlichTheme.darkTextTheme.bodyText1,
              )),
              Chip(
                  label: Text(
                'Lemograss',
                style: FooderlichTheme.darkTextTheme.bodyText1,
              )),
              Chip(
                  label: Text(
                'Salad',
                style: FooderlichTheme.darkTextTheme.bodyText1,
              )),
              Chip(
                  label: Text(
                'Water',
                style: FooderlichTheme.darkTextTheme.bodyText1,
              )),
            ]),
          )
        ],
      ),
    ));
  }
}
