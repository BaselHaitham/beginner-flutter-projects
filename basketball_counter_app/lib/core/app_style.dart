import 'package:flutter/material.dart';

class AppStyle extends StatelessWidget {
 final String text;
final double fontSizee ;
   AppStyle({super.key, required this.text, required this.fontSizee});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:  TextStyle(
        color: Colors.black,
        fontSize: fontSizee,
        fontWeight: FontWeight.bold,
        fontFamily: 'Univers 57 Condensed',
      ),
    );
  }
}
