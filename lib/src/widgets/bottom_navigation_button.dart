import 'package:flutter/material.dart';
import 'package:foodelivery/src/widgets/custom_text.dart';

class ButtonNavigation extends StatelessWidget {

  final String image;
  final String name;

  const ButtonNavigation({Key key, this.image, this.name}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0, 2.0, 8.0, 2.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            'images/$image',
            width: 26,
          ),
          CustomText(text: name, size: 12.0,)
        ],
      ),
    );
  }
}