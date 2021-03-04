import 'package:flutter/material.dart';
import 'package:foodelivery/src/helpers/commons.dart';
import 'package:foodelivery/src/models/products.dart';
import 'package:foodelivery/src/widgets/custom_text.dart';

class ShoppingBag extends StatefulWidget {
  @override
  _ShoppingBagState createState() => _ShoppingBagState();
}

class _ShoppingBagState extends State<ShoppingBag> {

  Product product = Product(name: "Cereals",image: "1.jpg",price: 5.99,rating: 4.2,vendor: "GoodFoos",wishList: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        elevation: 0,
        centerTitle: true,
        title: CustomText(
          text: 'Shopping Bag',
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Image.asset(
                    "images/shopping-bag.png",
                    height: 20.0,
                    width: 20.0,
                  ),
                ),
                Positioned(
                  right: 5,
                  bottom: 0,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: white,
                        boxShadow: [
                          BoxShadow(
                              color: grey,
                              offset: Offset(2, 1),
                              blurRadius: 3)
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 4.0, right: 4.0),
                      child: CustomText(
                        text: "2",
                        colors: red,
                        size: 16.0,
                        weight: FontWeight.bold,
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
        iconTheme: IconThemeData(color: black),
      ),
      backgroundColor: white,
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: MediaQuery.of(context).size.width - 10,
                height: 120.0,
                decoration: BoxDecoration(
                  color: white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.red.shade50,
                      offset: Offset(3,5),
                      blurRadius: 30,
                    )
                  ]
                ),
                child: Row(
                  children: [
                    Image.asset(
                      "images/${product.image}",
                      height: 120.0,
                      width: 120.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(text: product.name + '\n' , style: TextStyle(color: black, fontSize: 20)),
                              TextSpan(text: '\$' + product.price.toString() + '\n' , style: TextStyle(color: black, fontSize: 16, fontWeight: FontWeight.bold))
                            ]
                          ),
                        ),
                        SizedBox(width: 140,),
                        IconButton(icon: Icon(Icons.delete), onPressed: (){})
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
