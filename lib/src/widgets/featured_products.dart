import 'package:flutter/material.dart';
import 'package:foodelivery/src/commons.dart';
import 'package:foodelivery/src/models/products.dart';
import 'package:foodelivery/src/widgets/custom_text.dart';

List<Product> productList = [
  Product(
      name: "Cereals",
      image: "1.jpg",
      price: 5.99,
      rating: 4.2,
      vendor: "GoodFoos",
      wishList: true),
  Product(
      name: "Cesar Salad",
      image: "2.jpg",
      price: 5.99,
      rating: 4.0,
      vendor: "GoodFoos",
      wishList: false),
  Product(
      name: "Salad and chicken",
      image: "3.jpg",
      price: 5.99,
      rating: 5.0,
      vendor: "GoodFoos",
      wishList: false),
  Product(
      name: "Creps",
      image: "4.jpeg",
      price: 5.99,
      rating: 4.9,
      vendor: "GoodFoos",
      wishList: true),
  Product(
      name: "Burritos",
      image: "5.jpg",
      price: 5.99,
      rating: 4.1,
      vendor: "GoodFoos",
      wishList: true)
];

class Featured extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: productList.length,
        itemBuilder: (_, index) {
          return Padding(
            padding: const EdgeInsets.fromLTRB(12.0, 14.0, 16.0, 12.0),
            child: Container(
              height: 220.0,
              width: 200.0,
              decoration: BoxDecoration(color: white, boxShadow: [
                BoxShadow(
                  color: Colors.red.shade50,
                  offset: Offset(15, 5),
                  blurRadius: 30,
                )
              ]),
              child: Column(
                children: [
                  Image.asset(
                    "images/${productList[index].image}",
                    height: 140.0,
                    width: 140,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CustomText(
                          text: productList[index].name,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              color: white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.shade300,
                                  offset: Offset(1, 1),
                                  blurRadius: 4,
                                )
                              ]),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: productList[index].wishList
                                ? Icon(Icons.favorite, size: 18.0, color: red)
                                : Icon(Icons.favorite_border,
                                    size: 18.0, color: red),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 1.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: CustomText(
                              text: productList[index].rating.toString(),
                              colors: grey,
                              size: 14.0,
                            ),
                          ),
                          SizedBox(
                            width: 2.0,
                          ),
                          Icon(
                            Icons.star,
                            color: red,
                            size: 16.0,
                          ),
                          Icon(
                            Icons.star,
                            color: red,
                            size: 16.0,
                          ),
                          Icon(
                            Icons.star,
                            color: red,
                            size: 16.0,
                          ),
                          Icon(
                            Icons.star,
                            color: red,
                            size: 16.0,
                          ),
                          Icon(
                            Icons.star,
                            color: grey,
                            size: 16.0,
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: CustomText(
                          text: '\$${productList[index].price}',
                          weight: FontWeight.bold,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
