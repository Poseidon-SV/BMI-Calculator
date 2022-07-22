import 'package:flutter/material.dart';
import '../constant.dart';

class CardContent extends StatelessWidget {
  CardContent(this.text, this.cardIcon); //Constructor

  final String text;
  final IconData cardIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          cardIcon,
          size: 55.0,
        ),
        SizedBox(height: 10),
        Text(text, style: kCardTextStyle)
      ],
    );
  }
}
