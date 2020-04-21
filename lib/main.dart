import 'package:flutter/material.dart';

//My imports
import 'package:flutter_ecommerce/components/home_drawer.dart';
import 'package:flutter_ecommerce/components/home_page.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    final mediaQueryData = MediaQuery.of(context);
    final screenWidth = mediaQueryData.size.width;

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

      //Drawer here imported from home_drawer.dart
      drawer: new HomeDrawer(),

      body: new Container(
        child:  HomePageContent(),
      ), //Everything that the body contains will be found in the main content*.
      
    );
  }
}
