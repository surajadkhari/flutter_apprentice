import 'package:flutter/material.dart';
import 'package:flutter_recipes/circle_image.dart';
import 'package:flutter_recipes/foodrlichtheme.dart';

class AuthorCard extends StatefulWidget {
  final String authorName;
  final String title;
  final ImageProvider imageProvider;

  const AuthorCard(
      {Key? key,
      required this.authorName,
      required this.imageProvider,
      required this.title})
      : super(key: key);

  @override
  State<AuthorCard> createState() => _AuthorCardState();
}

class _AuthorCardState extends State<AuthorCard> {
  bool _isFavorited = false;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleImage(
                  imageProvider: widget.imageProvider,
                  imageRadius: 28,
                ),
              ],
            ),
            SizedBox(
              width: 8,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.authorName,
                  style: FooderlichTheme.lightTextTheme.headline2,
                ),
                Text(
                  widget.title,
                  style: FooderlichTheme.lightTextTheme.headline3,
                ),
              ],
            ),
            IconButton(
                icon:
                    Icon(_isFavorited ? Icons.favorite : Icons.favorite_border),
                iconSize: 30,
                color: Colors.red[400],
                onPressed: () {
                  // const snackBar = SnackBar(content: Text('Favorite Pressed'));
                  // ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  setState(() {
                    _isFavorited = !_isFavorited;
                  });
                }),
          ],
        ));
  }
}
