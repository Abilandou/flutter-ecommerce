import 'package:flutter/material.dart';

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

    return new GridView.builder(
        itemCount: productList.length,
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4, crossAxisSpacing: 2.0),
        itemBuilder: (BuildContext context, int index) {
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

    return Card(
        child: Hero(
      tag: proName,
      child: Material(
          child: InkWell(
        onTap: () {},
        child: GridTile(
            footer: Container(
              color: Colors.white70,
              child: ListTile(
                leading: Text(
                  proName,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                title: Text(
                  "\$$proOldPrice",
                  style: TextStyle(
                    color: Colors.pinkAccent,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  "\$$proOldPrice",
                  style: TextStyle(
                      color: Colors.pinkAccent,
                      decoration: TextDecoration.lineThrough),
                ),
              ),
            ),
            child: Image.asset(proPicture, fit: BoxFit.cover)),
      )),
    ));
  }
}
