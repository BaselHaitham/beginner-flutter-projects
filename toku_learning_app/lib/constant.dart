import 'package:flutter/material.dart';
import 'package:toku_learning_app/screens/colorspage.dart';
import 'package:toku_learning_app/screens/familypage.dart';
import 'package:toku_learning_app/screens/numberspage.dart';
import 'package:toku_learning_app/screens/phrasespage.dart';

class AppColors {
  static Color appbarcolor = Color(0xff6a3832);
  static Color numbercolor = Color(0xffef9235);
  static Color familycolor = Color(0xff528032);
  static Color colorscolor = Color(0xff7e40a3);
  static Color appcolor4 = Color(0xfffff6dc);
  static Color phrasescolor = Color(0xff48a5cc);
  static Color appcolor6 = Color(0xffffffff);
}

class AppStyle {
  static TextStyle appstyle = TextStyle(
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  static TextStyle appstyle2 = TextStyle(
    fontWeight: FontWeight.bold,
    color: Colors.white,
    fontSize: 25,
  );

  static TextStyle appstyle3 = TextStyle(
    fontWeight: FontWeight.bold,
    color: Colors.white,
    fontSize: 17,
  );

  static TextStyle homepagetextstyle = TextStyle(
    fontStyle: FontStyle.italic,
    fontWeight: FontWeight.bold,
    color: Colors.black,
    fontSize: 40,
  );
}

List<Widget> screens = [
  NumbersPage(),
  ColorsPage(),
  FamilyPage(),
  PhrasesPage(),
];
