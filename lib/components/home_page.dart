import 'package:flutter/material.dart';

//My imports
import 'package:flutter_ecommerce/components/home_carousel.dart';
import 'package:flutter_ecommerce/components/home_categories_horizontal_listView.dart';
import 'package:flutter_ecommerce/components/home_recent_products.dart';

class HomePageContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ListView(
      children: <Widget>[
        new HomeCarousel(),
        new Padding(
          //padding for the categories
          padding: const EdgeInsets.all(8.0),
          child: new Text('Categories'),
        ),

        //Horizontal List View Here
        new HomeCategoryHorizontalList(),

         new Padding(
          //padding for the categories
          padding: const EdgeInsets.only(top: 35.0, left: 8.0),
          child: new Text('Recent Products'),
        ),

        //Recent products here

        Container(
          height: 320.0,
         child: HomeRecentProducts(),
        ),
      ],
    );
  }
}

