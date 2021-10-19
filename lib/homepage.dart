import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'card1.dart';
import 'card2.dart';
import 'card3.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedindex = 0;

  static List<Widget> pages = <Widget>[Card1(), Card2(), Card3()];

  void _onItemTapped(int index) {
    setState(() {
      _selectedindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        'Foodrlich',
        style: Theme.of(context).textTheme.headline6,
      )),
      // body: Center(
      //   child: Text('Let\'s get cooking 👩‍🍳',
      //       style: Theme.of(context).textTheme.headline1),
      // ),
      body: pages[_selectedindex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Theme.of(context).textSelectionTheme.selectionColor,
        currentIndex: _selectedindex,
        onTap: _onItemTapped,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard), label: "Card1"),
          BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard), label: "Card2"),
          BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard), label: "Card3")
        ],
      ),
    );
  }
}
