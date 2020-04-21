import 'package:flutter/material.dart';

class ProductDetail extends StatefulWidget {

  final proDetName;
  final proDetOldPrice;
  final proDetPicture;
  final proDetPrice;

  ProductDetail({
    this.proDetName,
    this.proDetOldPrice,
    this.proDetPicture,
    this.proDetPrice
  });



  @override
  _ProductDetailState createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    final screenWidth = mediaQueryData.size.width;
    final screenHeight = mediaQueryData.size.height;
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        backgroundColor: Colors.pink,
        title: Text('GShop'),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search), onPressed: () {}),
          new IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {})
        ],
      ),

      body: ListView(
        children: <Widget>[
          new Container(
            height: 300.0,
             color: Colors.white,
            child: GridTile(
              child: Container(
                color:Colors.white,
                child: Image.asset(widget.proDetPicture),
              ),
              footer: Text("ProducNameHere"),
            ),
          )
        ],
      )
    );
  }
}