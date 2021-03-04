import 'package:flutter/material.dart';
import 'package:foodelivery/src/widgets/custom_text.dart';

class ButtonNavigation extends StatelessWidget {

  final String image;
  final String name;
  final Function onTap;


  const ButtonNavigation({Key key, this.image, this.name, this.onTap}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0, 2.0, 8.0, 2.0),
      child: GestureDetector(
        onTap: onTap ?? null,
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
      ),
    );
  }
}