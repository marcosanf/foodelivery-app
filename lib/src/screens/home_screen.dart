import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'file:///C:/Users/Usuario/IdeaProjects/foodelivery/lib/src/helpers/commons.dart';
import 'package:foodelivery/src/widgets/bottom_navigation_button.dart';
import 'package:foodelivery/src/widgets/categories.dart';
import 'package:foodelivery/src/widgets/custom_text.dart';
import 'package:foodelivery/src/widgets/featured_products.dart';
import 'package:foodelivery/src/widgets/small_button.dart';

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
            Featured(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomText(
                text: 'Popular',
                size: 20.0,
                colors: grey,
              ),
            ),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Image.asset("images/food.jpg"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SmallButton(icon: Icons.favorite),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          width: 50,
                          decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(5)
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Icon(Icons.star, color: Colors.yellow.shade900,size: 20.0,),
                              ),
                              Text('4.5')
                            ],
                          )
                        ),
                      )
                    ],
                  ),
                ),
                Positioned.fill(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 100.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20.0), bottomRight: Radius.circular(20.0)),
                          gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [
                              Colors.black.withOpacity(0.8),
                              Colors.black.withOpacity(0.7),
                              Colors.black.withOpacity(0.6),
                              Colors.black.withOpacity(0.6),
                              Colors.black.withOpacity(0.4),
                              Colors.black.withOpacity(0.1),
                              Colors.black.withOpacity(0.05),
                              Colors.black.withOpacity(0.025),
                            ],
                          )
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned.fill(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(12, 8, 8, 8),
                            child: RichText(text: TextSpan(
                              children: [
                                TextSpan(text: "Pancakes \n", style: TextStyle(
                                  fontSize: 20.0, fontWeight: FontWeight.bold
                                )),
                                TextSpan(text: "by: ", style: TextStyle(fontSize:  16.0, fontWeight: FontWeight.w100)),
                                TextSpan(text: "Pizza hut"),
                              ]
                            )),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(text: "\$12.99\n", style: TextStyle(
                                    fontSize: 22.0, fontWeight: FontWeight.w300
                                  ))
                                ]
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 60,
        color: white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ButtonNavigation(image: 'home.png',name: 'Home',),
            ButtonNavigation(image: 'target.png',name: 'Near by',),
            ButtonNavigation(image: 'shopping-bag.png',name: 'Cart',),
            ButtonNavigation(image: 'avatar.png',name: 'Account',),
          ],
        ),
      ),
    );
  }
}

