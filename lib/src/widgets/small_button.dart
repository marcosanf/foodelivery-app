import 'package:flutter/material.dart';
import 'file:///C:/Users/Usuario/IdeaProjects/foodelivery/lib/src/helpers/commons.dart';

class SmallButton extends StatelessWidget {

  final IconData icon;

  const SmallButton({Key key, this.icon}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: red
      ),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Icon(icon, size: 16.0, color: white),
      ),
    );
  }
}