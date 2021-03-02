import 'package:flutter/material.dart';
import 'file:///C:/Users/Usuario/IdeaProjects/foodelivery/lib/src/helpers/commons.dart';
import 'package:foodelivery/src/models/products.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:foodelivery/src/widgets/custom_text.dart';

class DetailsScreen extends StatefulWidget {
  final Product product;
  DetailsScreen({@required this.product});

  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: white,
        body: SafeArea(
          child: Column(
            children: [
              Container(
                height: 300.0,
                child: Stack(
                  children: [
                    Carousel(
                      images: [
                        Image.asset('images/${widget.product.image}'),
                        Image.asset('images/${widget.product.image}'),
                        Image.asset('images/${widget.product.image}')
                      ],
                      dotBgColor: white,
                      dotColor: grey,
                      autoplay: false,
                      dotIncreasedColor: red,
                      dotIncreaseSize: 1.5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            icon: Icon(Icons.arrow_back),
                            color: black,
                            onPressed: () {
                              Navigator.pop(context);
                            }),
                        Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Stack(
                                children: [
                                  Image.asset(
                                    "images/shopping-bag.png",
                                    height: 30,
                                    width: 30,
                                  ),
                                ],
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
                        )
                      ],
                    ),
                    Positioned(
                        right: 20.0,
                        bottom: 55.0,
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              color: white,
                              boxShadow: [
                                BoxShadow(
                                  color: grey,
                                  offset: Offset(2, 1),
                                  blurRadius: 3,
                                )
                              ]),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  color: white),
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Icon(Icons.favorite,
                                    size: 22.0, color: red),
                              ),
                            ),
                          ),
                        ))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12.0, right: 12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: widget.product.name,
                      size: 26.0,
                      weight: FontWeight.bold,
                    ),
                    CustomText(
                      text: "\$" + widget.product.price.toString(),
                      size: 20.0,
                      weight: FontWeight.w400,
                    )
                  ],
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: CustomText(text: 'by Pizza hut', size: 14, weight: FontWeight.w300,),
                ),
              ),
              SizedBox(height: 15.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButton(icon: Icon(Icons.remove, size: 36.0,), onPressed: (){}),
                  ),
                  GestureDetector(
                    onTap: (){},
                    child: Container(
                      decoration: BoxDecoration(
                        color: red,
                        borderRadius: BorderRadius.circular(5.0)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(36.0, 10.0, 36.0, 10.0),
                        child: CustomText(
                          text: 'Add to Bag',
                          colors: white,
                          size: 24,
                          weight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButton(icon: Icon(Icons.add, size: 36.0, color: red,), onPressed: (){}),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
