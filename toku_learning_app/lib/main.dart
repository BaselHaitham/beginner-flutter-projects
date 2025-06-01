import 'package:flutter/material.dart';
import 'package:toku_learning_app/constant.dart';
import 'package:toku_learning_app/screens/colorspage.dart';
import 'package:toku_learning_app/screens/familypage.dart';
import 'package:toku_learning_app/screens/homepage.dart';
import 'package:toku_learning_app/screens/numberspage.dart';
import 'package:toku_learning_app/screens/phrasespage.dart';
import 'package:toku_learning_app/screens/splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: AppColors.appcolor6,
      title: 'Toku Learning App',
      debugShowCheckedModeBanner: false,

      routes: {
        'splash': (context) => const SplashScreen(),
        'numbers': (context) => const NumbersPage(),
        'home': (context) => HomePage(),
        'colors': (context) => const ColorsPage(),
        'phrases': (context) => const PhrasesPage(),
        'family': (context) => const FamilyPage(),
      },
      initialRoute: 'splash',
    );
  }
}
