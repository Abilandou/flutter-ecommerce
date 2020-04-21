import 'package:flutter/material.dart';
import 'package:flutter/src/rendering/proxy_box.dart';

class HomeRecentProducts extends StatefulWidget {
  @override
  _HomeRecentProductsState createState() => _HomeRecentProductsState();
}

class _HomeRecentProductsState extends State<HomeRecentProducts> {
  var productList = [
    {
      "name": "Jean One",
      "picture": "asset/images/jean1.jpeg",
      "old_price": 120,
      "price": 115,
    },
    {
      "name": "Jean Two",
      "picture": "asset/images/jean2.jpg",
      "old_price": 100,
      "price": 105,
    },
    {
      "name": "Jean Three",
      "picture": "asset/images/jean3.jpg",
      "old_price": 130,
      "price": 115,
    },
    {
      "name": "Jean Four",
      "picture": "asset/images/jean4.jpg",
      "old_price": 200,
      "price": 112,
    },
    {
      "name": "Jean Five",
      "picture": "asset/images/jean5.jpg",
      "old_price": 1200,
      "price": 215,
    },
    {
      "name": "Jean Six",
      "picture": "asset/images/jean7.jpg",
      "old_price": 1000,
      "price": 900,
    },
  ];

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    final screenWidth = mediaQueryData.size.width;
    // return Container(
    //     height: 32.0,
    //     width: screenWidth,
    //     child: new GridView(
    //       gridDelegate:
    //           new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
    //             crossAxisSpacing: 2.0,
    //           ),
    //       children: <Widget>[
    //         new Text('Beautiful'),
    //         new Text('Beautiful'),
    //         new Text('Beautiful'),
    //         new Text('Beautiful'),
    //         new Text('Beautiful'),
    //         new Text('Beautiful'),
    //         new Text('Beautiful'),
    //         new Text('Beautiful'),
    //         new Text('Beautiful'),
    //         new Text('Beautiful'),
    //         new Text('Beautiful'),
    //         new Text('Beautiful'),
    //         new Text('Beautiful'),
    //         new Text('Beautiful'),
    //         new Text('Beautiful'),
    //         new Text('Beautiful'),
    //       ],
    //     ));

    GridView.builder(
        itemCount: productList.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, crossAxisSpacing: 2.0),
        itemBuilder: (BuildContext context, int index) {
          Text("This is good");
          return SingleProduct(
            proName: productList[index]['name'],
            proPicture: productList[index]['picture'],
            proOldPrice: productList[index]['old_price'],
            proPrice: productList[index]['price'],
          );
        });
  }
}

class SingleProduct extends StatelessWidget {
  final proName;
  final proPicture;
  final proOldPrice;
  final proPrice;

  SingleProduct(
      {this.proName, this.proPicture, this.proOldPrice, this.proPrice});

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    final screenWidth = mediaQueryData.size.width;

    return Container(width: screenWidth, height: 32.0, child: Text("TestHere"));
  }
}
