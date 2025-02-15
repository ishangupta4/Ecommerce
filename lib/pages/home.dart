import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

import 'package:flutter_ecommerce/components/horizontal_listView.dart';
import 'package:flutter_ecommerce/components/products.dart';
import 'package:flutter_ecommerce/pages/cart.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget imageCarousel = new Container(
      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/c1.jpg'),
          AssetImage('images/m1.jpeg'),
          AssetImage('images/m2.jpg'),
          AssetImage('images/w4.jpeg'),
          AssetImage('images/w3.jpeg'),
        ],
        autoplay: false,
        animationCurve: Curves.fastLinearToSlowEaseIn,
        animationDuration: Duration(milliseconds: 1000),
        indicatorBgPadding: 0.0,
        dotSize: 7.0,
        dotBgColor: Colors.transparent,
      ),
    );

    return Scaffold(
      appBar: new AppBar(
        title: Text('Shop App'),
        backgroundColor: Colors.red,
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: null),
          new IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => new Cart()));
              })
        ],
      ),
      drawer: new Drawer(
        child: ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: Text("Ishan Gupta"),
              accountEmail: Text("ishangupta004@gmail.com"),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
              ),
              decoration: new BoxDecoration(
                color: Colors.red,
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Home"),
                leading: Icon(
                  Icons.home,
                  color: Colors.red,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("My Acount"),
                leading: Icon(
                  Icons.person,
                  color: Colors.red,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Orders"),
                leading: Icon(
                  Icons.shopping_basket,
                  color: Colors.red,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => new Cart()));
                },
                child: ListTile(
                  title: Text("Shopping Cart"),
                  leading: Icon(
                    Icons.shopping_cart,
                    color: Colors.red,
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Favourites"),
                leading: Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
              ),
            ),
            Divider(),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Settings"),
                leading: Icon(
                  Icons.settings,
                  color: Colors.grey,
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
            )
          ],
        ),
      ),
      body: new ListView(children: <Widget>[
        imageCarousel,
        new Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(child: new Text('Categories')),
        ),
        HorizontalList(),
        new Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(child: new Text('Recent products')),
        ),
        Container(
          height: 300.0,
          child: Products(),
        )
      ]),
    );
  }
}
