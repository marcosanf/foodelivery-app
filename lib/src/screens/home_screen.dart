import 'package:flutter/material.dart';
import 'package:foodelivery/src/commons.dart';
import 'package:foodelivery/src/widgets/categories.dart';
import 'package:foodelivery/src/widgets/custom_text.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomText(
                    text: 'What would you like to eat?',
                    size: 18.0,
                  ),
                ),
                Stack(
                  children: [
                    IconButton(
                        icon: Icon(Icons.notifications_none), onPressed: () {}),
                    Positioned(
                      top: 12.0,
                      right: 12.0,
                      child: Container(
                        height: 10.0,
                        width: 10,
                        decoration: BoxDecoration(
                            color: red,
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 5.0,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(color: white, boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade300,
                    offset: Offset(1, 1),
                    blurRadius: 4,
                  )
                ]),
                child: ListTile(
                  leading: Icon(
                    Icons.search,
                    color: red,
                  ),
                  title: TextField(
                    decoration: InputDecoration(
                        hintText: "Find food or restaurant",
                        border: InputBorder.none),
                  ),
                  trailing: Icon(
                    Icons.filter_list,
                    color: red,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 2.0,
            ),
            Categories(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomText(
                text: 'Featured',
                size: 20.0,
                colors: grey,
              ),
            ),
            Container(
              height: 240.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
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
                            "images/1.jpg",
                            height: 140.0,
                            width: 140,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: CustomText(
                                  text: "Some food",
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
                                    child: Icon(Icons.favorite_border,
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
                                      text: '4.7',
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
                                  text: '\$12.99',
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
            )
          ],
        ),
      ),
    );
  }
}
