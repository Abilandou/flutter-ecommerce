import 'package:flutter/material.dart';


class HomeDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Drawer(
      child: new ListView(
        children: <Widget>[
          //header
          new UserAccountsDrawerHeader(
            accountName: Text('Godlove'),
            accountEmail: Text('godloveabilandou@gmail.com'),
            currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
              backgroundColor: Colors.grey,
              child: Icon(Icons.person, color: Colors.white),
            )),
            decoration: new BoxDecoration(color: Colors.pink),
          ),

          //body
          InkWell(
            onTap: (){},
            child: ListTile(
              title: Text("Home Page"),
              leading: Icon(Icons.home),
            ),
          ),
          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text("My Account"),
              leading: Icon(Icons.account_circle),
            ),
          ),
          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text("My Orders"),
              leading: Icon(Icons.shopping_basket),
            ),
          ),
          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text("Categories"),
              leading: Icon(Icons.category),
            ),
          ),
          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text("Favorites"),
              leading: Icon(Icons.favorite),
            ),
          ),

          Divider(),

          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text("Settings"),
              leading: Icon(
                Icons.settings,
                color: Colors.green,
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text("About"),
              leading: Icon(
                Icons.help,
                color: Colors.blue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
