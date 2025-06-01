import 'package:flutter/material.dart';

class HappybirthdayTextstyle extends StatelessWidget {
  final String text;

  const HappybirthdayTextstyle({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(text,
        textAlign: TextAlign.center,
        style: const TextStyle(
            fontFamily: 'Anton',
            fontSize: 60,
            fontWeight: FontWeight.bold,
            color: Colors.white));
  }
}
