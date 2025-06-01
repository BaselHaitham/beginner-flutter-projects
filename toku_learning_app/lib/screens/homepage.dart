import 'package:flutter/material.dart';
import 'package:toku_learning_app/constant.dart';
import 'package:toku_learning_app/screens/colorspage.dart';
import 'package:toku_learning_app/screens/familypage.dart';
import 'package:toku_learning_app/screens/numberspage.dart';
import 'package:toku_learning_app/screens/phrasespage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    NumbersPage(),
    ColorsPage(),
    FamilyPage(),
    PhrasesPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: _selectedIndex, children: _screens),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.shifting,
        items: [
          BottomNavigationBarItem(
            backgroundColor: AppColors.numbercolor,
            icon: Icon(Icons.numbers),
            label: "Numbers",
          ),
          BottomNavigationBarItem(
            backgroundColor: AppColors.colorscolor,
            icon: Icon(Icons.color_lens),
            label: "Colors",
          ),
          BottomNavigationBarItem(
            backgroundColor: AppColors.familycolor,
            icon: Icon(Icons.person),
            label: "FAMILY",
          ),
          BottomNavigationBarItem(
            backgroundColor: AppColors.phrasescolor,
            icon: Icon(Icons.settings),
            label: "Phrases",
          ),
        ],
      ),
    );
  }
}
