import 'package:flutter/material.dart';
import 'package:foodelivery/src/models/category.dart';
import 'package:foodelivery/src/widgets/custom_text.dart';
import '../helpers/commons.dart';

List<Category> categoriesList = [
  Category(name: "Salad", image: "salad.png"),
  Category(name: "Sea food", image: "fish.png"),
  Category(name: "Beer", image: "pint.png"),
  Category(name: "Steak", image: "steak.png"),
  Category(name: "Fast food", image: "sandwich.png"),
  Category(name: "Deserts", image: "ice-cream.png"),
];

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoriesList.length,
        itemBuilder: (_, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.red.shade50,
                          offset: Offset(4,6),
                          blurRadius: 20,
                        )
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Image.asset("images/${categoriesList[index].image}", width: 50.0,),
                  ),
                ),
                SizedBox(height: 5.0,),
                CustomText(text: categoriesList[index].name, size: 16.0, colors: black,)
              ],
            ),
          );
        },
      ),
    )
    ;
  }
}
