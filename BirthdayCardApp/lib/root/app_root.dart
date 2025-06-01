import 'package:birthdaycardapp/Screen/birthday_card_app.dart';
import 'package:flutter/material.dart';

class AppRoot extends StatelessWidget {
  const AppRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BirthdayCardApp(),
    );
  }
}