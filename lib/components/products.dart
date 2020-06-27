import 'package:flutter/material.dart';

import 'package:flutter_ecommerce/pages/product_details.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "Blazer",
      "picture": "images/products/blazer1.jpeg",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "Red dress",
      "picture": "images/products/dress1.jpeg",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "Black dress",
      "picture": "images/products/dress2.jpeg",
      "old_price": 105,
      "price": 60,
    },
    {
      "name": "Women's blazer",
      "picture": "images/products/blazer2.jpeg",
      "old_price": 110,
      "price": 75,
    },
    {
      "name": "Maroon heels",
      "picture": "images/products/hills1.jpeg",
      "old_price": 100,
      "price": 45,
    },
    {
      "name": "Red heels",
      "picture": "images/products/hills2.jpeg",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "Shoes",
      "picture": "images/products/shoe1.jpg",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "Floral blue skirt",
      "picture": "images/products/skt1.jpeg",
      "old_price": 90,
      "price": 65,
    },
    {
      "name": "Pink skirt",
      "picture": "images/products/skt2.jpeg",
      "old_price": 105,
      "price": 80,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: SingleProd(
              prod_name: product_list[index]['name'],
              prod_pricture: product_list[index]['picture'],
              prod_old_price: product_list[index]['old_price'],
              prod_price: product_list[index]['price'],
            ),
          );
        });
  }
}

class SingleProd extends StatelessWidget {
  final prod_name;
  final prod_pricture;
  final prod_old_price;
  final prod_price;

  SingleProd({
    this.prod_name,
    this.prod_pricture,
    this.prod_old_price,
    this.prod_price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: prod_name,
        child: Material(
          child: InkWell(
            onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                builder: (context) => new ProductDetails(
                      product_detail_name: prod_name,
                      product_detail_new_price: prod_price,
                      product_detail_old_price: prod_old_price,
                      product_detail_picture: prod_pricture,
                    ))),
            child: GridTile(
                footer: Container(
                  color: Colors.white70,
                  child: ListTile(
                    leading: Text(
                      prod_name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    title: Text(
                      "\$$prod_price",
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.w800),
                    ),
                    subtitle: Text(
                      "\$$prod_old_price",
                      style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.w800,
                          decoration: TextDecoration.lineThrough),
                    ),
                  ),
                ),
                child: Image.asset(
                  prod_pricture,
                  fit: BoxFit.cover,
                )),
          ),
        ),
      ),
    );
  }
}
