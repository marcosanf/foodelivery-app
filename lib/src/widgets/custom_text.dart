import 'package:flutter/material.dart';
import 'package:foodelivery/src/helpers/commons.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double size;
  final Color colors;
  final FontWeight weight;

  const CustomText({Key key, @required this.text, this.size, this.colors, this.weight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size ?? 16.0,
        fontWeight: weight ?? FontWeight.normal,
        color: colors ?? black
      ),
    );
  }
}
