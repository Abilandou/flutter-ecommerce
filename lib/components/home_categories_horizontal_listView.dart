import 'package:flutter/material.dart';

class HomeCategoryHorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: ListView(scrollDirection: Axis.horizontal, children: <Widget>[
        Category(
            imageLocation: 'asset/cats/Tshirts.png', imageCaption: 'shirt'),
        Category(imageLocation: 'asset/cats/dress.png', imageCaption: 'dress'),
        Category(imageLocation: 'asset/cats/pants.png', imageCaption: 'pants'),
        Category(
            imageLocation: 'asset/cats/formal.png', imageCaption: 'formal'),
        Category(
            imageLocation: 'asset/cats/informal.png', imageCaption: 'informal'),
        Category(imageLocation: 'asset/cats/shoes.png', imageCaption: 'shoes'),
        Category(
            imageLocation: 'asset/cats/others.png', imageCaption: 'others'),
      ]),
    );
  }
}

class Category extends StatelessWidget {
  final String imageLocation;
  final String imageCaption;

  Category({this.imageLocation, this.imageCaption});

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    final screenWidth = mediaQueryData.size.width;

    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
          onTap: () {},
          child: Container(
            width: 100.0,
            child: ListTile(
              title: Image.asset(
                imageLocation,
                width: screenWidth,
                height: 80.0,
              ),
              subtitle: Container(
                  alignment: Alignment.topCenter, child: Text(imageCaption)),
            ),
          )),
    );
  }
}
