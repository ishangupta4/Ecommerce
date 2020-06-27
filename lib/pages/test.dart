// import 'package:flutter/material.dart';

// Skip to content
// Search or jump to…

// Pull requests
// Issues
// Marketplace
// Explore

// @ishangupta4
// ParthSamnani
// /
// fashapp
// 1
// 0
// 1
// Code
// Issues
// Pull requests
// Actions
// Projects
// Wiki
// Security
// Insights
// fashapp/product_details.dart
// @ParthSamnani
// ParthSamnani Add files via upload
// Latest commit d1e695f on 22 Mar
//  History
//  1 contributor
// 399 lines (381 sloc)  14.8 KB

// import 'package:flutter/material.dart';
// import 'package:fashapp/main.dart';
// import "home.dart";
// class ProductDetails extends StatefulWidget {
//   final product_detail_name;
//   final product_detail_new_price;
//   final product_detail_old_price;
//   final product_detail_picture;

//   ProductDetails(
//       {this.product_detail_name,
//         this.product_detail_new_price,
//         this.product_detail_old_price,
//         this.product_detail_picture});

//   @override
//   _ProductDetailsState createState() => _ProductDetailsState();
// }

// class _ProductDetailsState extends State<ProductDetails> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: new AppBar(
//           elevation: 0.0,
//           backgroundColor: Colors.red,
//           title: InkWell(onTap: (){
//             Navigator.push(context, MaterialPageRoute(builder: (context)=> new HomePage()));
//           },
//               child: new Center(child: new Text('Fashapp', textAlign: TextAlign.center,),)),
//           actions: <Widget>[
//             new IconButton(
//                 icon: Icon(Icons.search, color: Colors.white),
//                 onPressed: () {}),
//             //new IconButton(
//             //  icon: Icon(Icons.shopping_cart, color: Colors.white),
//             //onPressed: () {})
//           ],
//         ),
//         body: new ListView(
//           children: <Widget>[
//             new Container(
//               height: 300.0,
//               child: GridTile(
//                 child: Container(
//                   color: Colors.white,
//                   child: Image.asset(widget.product_detail_picture),
//                 ),
//                 footer: new Container(
//                   color: Colors.white70,
//                   child: ListTile(
//                     leading: new Text(
//                       widget.product_detail_name,
//                       style: TextStyle(
//                           fontWeight: FontWeight.bold, fontSize: 16.0),
//                     ),
//                     title: new Row(
//                       children: <Widget>[
//                         Expanded(
//                             child: new Text(
//                               "\$${widget.product_detail_old_price}",
//                               style: TextStyle(
//                                   color: Colors.grey,
//                                   decoration: TextDecoration.lineThrough),
//                             )),
//                         Expanded(
//                             child: new Text(
//                                 "\$${widget.product_detail_new_price}",
//                                 style: TextStyle(
//                                     fontWeight: FontWeight.bold,
//                                     color: Colors.red))),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ),

// //     ==== the first buttons ====
//             Row(
//               children: <Widget>[
//                 // =======̥ the size button ======
//                 Expanded(
//                   child: MaterialButton(
//                     onPressed: () {
//                       showDialog(
//                           context: context,
//                           builder: (context) {
//                             return new AlertDialog(
//                               title: new Text("Size"),
//                               content: new Text("Choose the size"),
//                               actions: <Widget>[
//                                 new MaterialButton(
//                                   onPressed: () {
//                                     Navigator.of(context).pop(context);
//                                   },
//                                   child: new Text("Close"),
//                                 )
//                               ],
//                             );
//                           });
//                     },
//                     color: Colors.white,
//                     textColor: Colors.grey,
//                     elevation: 0.2,
//                     child: Row(
//                       children: <Widget>[
//                         Expanded(
//                           child: new Text("Size"),
//                         ),
//                         Expanded(
//                           child: new Icon(Icons.arrow_drop_down),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),

//                 Expanded(
//                   child: MaterialButton(
//                     onPressed: () {
//                       showDialog(
//                           context: context,
//                           builder: (context) {
//                             return new AlertDialog(
//                               title: new Text("Colour"),
//                               content: new Text("Choose the colour"),
//                               actions: <Widget>[
//                                 new MaterialButton(
//                                   onPressed: () {
//                                     Navigator.of(context).pop(context);
//                                   },
//                                   child: new Text("Close"),
//                                 )
//                               ],
//                             );
//                           });
//                     },
//                     color: Colors.white,
//                     textColor: Colors.grey,
//                     elevation: 0.2,
//                     child: Row(
//                       children: <Widget>[
//                         Expanded(
//                           child: new Text("Colour"),
//                         ),
//                         Expanded(
//                           child: new Icon(Icons.arrow_drop_down),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),

//                 Expanded(
//                   child: MaterialButton(
//                     onPressed: () {
//                       showDialog(
//                           context: context,
//                           builder: (context) {
//                             return new AlertDialog(
//                               title: new Text("Quantity"),
//                               content: new Text("Choose the quantity"),
//                               actions: <Widget>[
//                                 new MaterialButton(
//                                   onPressed: () {
//                                     Navigator.of(context).pop(context);
//                                   },
//                                   child: new Text("Close"),
//                                 )
//                               ],
//                             );
//                           });
//                     },
//                     color: Colors.white,
//                     textColor: Colors.grey,
//                     elevation: 0.2,
//                     child: Row(
//                       children: <Widget>[
//                         Expanded(
//                           child: new Text("Qty"),
//                         ),
//                         Expanded(
//                           child: new Icon(Icons.arrow_drop_down),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),

// //     ==== the second buttons ====
//             Row(
//               children: <Widget>[
//                 // =======̥ the size button ======
//                 Expanded(
//                   child: MaterialButton(
//                       onPressed: () {},
//                       color: Colors.red,
//                       textColor: Colors.white,
//                       elevation: 0.2,
//                       child: new Text("Buy now")),
//                 ),

//                 new IconButton(
//                     icon: Icon(
//                       Icons.add_shopping_cart,
//                       color: Colors.red,
//                     ),
//                     onPressed: () {}),
//                 new IconButton(
//                     icon: Icon(
//                       Icons.favorite_border,
//                       color: Colors.red,
//                     ),
//                     onPressed: () {}),
//               ],
//             ),
//             Divider(),
//             new ListTile(
//               title: new Text("Product details"),
//               subtitle: new Text(
//                   "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor "
//                       "incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis "
//                       "nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. "
//                       "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu "
//                       "fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in "
//                       "culpa qui officia deserunt mollit anim id est laborum."),
//             ),
//             Divider(),
//             new Row(
//               children: <Widget>[
//                 Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
//                   child: new Text("Product name", style: TextStyle(color: Colors.grey),),),
//                 Padding(padding: EdgeInsets.all(5.0),
//                   child: new Text(widget.product_detail_name),)
//               ],
//             ),
//             new Row(
//               children: <Widget>[
//                 Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
//                   child: new Text("Product brand", style: TextStyle(color: Colors.grey),),),

// //              REMEMBER TO CREATE THE PRODUCT BRAND
//                 Padding(padding: EdgeInsets.all(5.0),
//                   child: new Text("Brand X"),)
//               ],
//             ),

// //              ADD THE PRODUCT CONDITION
//             new Row(
//               children: <Widget>[
//                 Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
//                   child: new Text("Product condition", style: TextStyle(color: Colors.grey),),),
//                 Padding(padding: EdgeInsets.all(5.0),
//                   child: new Text("NEW"),)
//               ],
//             ),
//             Divider(),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: new Text("Similar Products"),
//             ),
// //         SIMILAR PRODUCTS SECTION
//             new Container(
//               height: 340.0,
//               child: Similar_products(),
//             )
//           ],
//         ));
//   }
// }

// class Similar_products extends StatefulWidget {
//   @override
//   _Similar_productsState createState() => _Similar_productsState();
// }

// class _Similar_productsState extends State<Similar_products> {

//   var product_list = [
//     {
//       "name": "Blazer",
//       "picture": "images/products/blazer1.jpeg",
//       "old_price": 120,
//       "price": 85,
//     },
//     {
//       "name": "Red dress",
//       "picture": "images/products/dress1.jpeg",
//       "old_price": 100,
//       "price": 50,
//     },

//     {
//       "name": "Women's blazer",
//       "picture": "images/products/blazer2.jpeg",
//       "old_price": 110,
//       "price": 75,
//     },

//     {
//       "name": "Red heels",
//       "picture": "images/products/hills2.jpeg",
//       "old_price": 100,
//       "price": 50,
//     },
//     {
//       "name": "Pink skirt",
//       "picture": "images/products/skt2.jpeg",
//       "old_price": 105,
//       "price": 80,
//     },
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return GridView.builder(
//         itemCount: product_list.length,
//         gridDelegate:
//         new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
//         itemBuilder: (BuildContext context, int index) {
//           return Similar_single_prod(
//             prod_name: product_list[index]['name'],
//             prod_pricture: product_list[index]['picture'],
//             prod_old_price: product_list[index]['old_price'],
//             prod_price: product_list[index]['price'],
//           );
//         });
//   }
// }
// class Similar_single_prod extends StatelessWidget {
//   final prod_name;
//   final prod_pricture;
//   final prod_old_price;
//   final prod_price;

//   Similar_single_prod({
//     this.prod_name,
//     this.prod_pricture,
//     this.prod_old_price,
//     this.prod_price,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       child: Hero(
//           tag: prod_name,
//           child: Material(
//             child: InkWell(
//               onTap: () => Navigator.of(context).push(new MaterialPageRoute(
//                 //here we are passing the values of the product to the product details page
//                   builder: (context) => new ProductDetails(
//                     product_detail_name: prod_name,
//                     product_detail_new_price: prod_price,
//                     product_detail_old_price: prod_old_price,
//                     product_detail_picture: prod_pricture,
//                   ))),
//               child: GridTile(
//                   footer: Container(
//                       color: Colors.white70,
//                       //instead of ListTile, I used Row
//                       //ListTile(
//                       //                      leading: Text(
//                       //                        prod_name,
//                       //                        style: TextStyle(fontWeight: FontWeight.bold),
//                       //                      ),
//                       //                      title: Text(
//                       //                        "\$$prod_price",
//                       //                        style: TextStyle(
//                       //                            color: Colors.red, fontWeight: FontWeight.w800),
//                       //                      ),
//                       //                      subtitle: Text(
//                       //                        "\$$prod_old_price",
//                       //                        style: TextStyle(
//                       //                            color: Colors.black54,
//                       //                            fontWeight: FontWeight.w800,
//                       //                            decoration: TextDecoration.lineThrough),
//                       //                      ),
//                       //                    ),
//                       child: new Row(children: <Widget>[
//                         Expanded(
//                           child: new Text(prod_name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),),
//                         ),
//                         new Text("\$${prod_price}", style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold)
//                         )
//                       ],)
//                   ),
//                   child: Image.asset(
//                     prod_pricture,
//                     fit: BoxFit.cover,
//                   )),
//             ),
//           )),
//     );
//   }
// }
// © 2020 GitHub, Inc.
// Terms
// Privacy
// Security
// Status
// Help
// Contact GitHub
// Pricing
// API
// Training
// Blog
// About
