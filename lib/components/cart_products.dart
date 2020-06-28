import 'package:flutter/material.dart';

class CartProducts extends StatefulWidget {
  @override
  _CartProductsState createState() => _CartProductsState();
}

class _CartProductsState extends State<CartProducts> {
  var Products_on_the_cart = [
    {
      "name": "Blazer",
      "picture": "images/products/blazer1.jpeg",
      "price": 85,
      "size": "M",
      "colour": "Black",
      "quantity": 1,
    },
    {
      "name": "Heels",
      "picture": "images/products/hills1.jpeg",
      "price": 45,
      "size": "7",
      "colour": "Maroon",
      "quantity": 1,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: Products_on_the_cart.length,
      itemBuilder: (context, index) {
        return Single_cart_product(
          cart_prod_name: Products_on_the_cart[index]["name"],
          cart_prod_pricture: Products_on_the_cart[index]["picture"],
          cart_prod_colour: Products_on_the_cart[index]["colour"],
          cart_prod_price: Products_on_the_cart[index]["price"],
          cart_prod_qty: Products_on_the_cart[index]["quantity"],
          cart_prod_size: Products_on_the_cart[index]["size"],
        );
      },
    );
  }
}

class Single_cart_product extends StatelessWidget {
  final cart_prod_name;
  final cart_prod_pricture;
  final cart_prod_price;
  final cart_prod_size;
  final cart_prod_colour;
  final cart_prod_qty;

  Single_cart_product(
      {this.cart_prod_name,
      this.cart_prod_pricture,
      this.cart_prod_price,
      this.cart_prod_size,
      this.cart_prod_colour,
      this.cart_prod_qty});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        // ======= LEADING SECTION =========
        leading: new Image.asset(
          cart_prod_pricture,
          width: 70.0,
          height: 70.0,
        ),
        // ======= TITLE SECTION ===========
        title: new Text(cart_prod_name),
        // =======SUBTITLE SECTION =========
        subtitle: new Column(
          children: <Widget>[
            //ROW INSIDE COLUMN
            new Row(
              children: <Widget>[
                // ========this section is for the size of the product=====
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: new Text("Size:"),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: new Text(
                    cart_prod_size,
                    style: TextStyle(color: Colors.red),
                  ),
                ),
                // ==========This section is for the product colour========
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8.0),
                  child: new Text("Colour:"),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: new Text(
                    cart_prod_colour,
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ],
            ),

            //===========this section is for the product price ============
            new Container(
              alignment: Alignment.topLeft,
              child: new Text(
                "\$$cart_prod_price",
                style: TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
              ),
            ),
          ],
        ),
        trailing: new FittedBox(
          fit: BoxFit.fill,
          child: new Column(
            children: <Widget>[
              new IconButton(icon: Icon(Icons.arrow_drop_up), onPressed: () {}),
              new Text(
                "$cart_prod_qty",
                style: TextStyle(fontSize: 25.0),
              ),
              new IconButton(
                  icon: Icon(Icons.arrow_drop_down), onPressed: () {})
            ],
          ),
        ),
      ),
    );
  }
}
