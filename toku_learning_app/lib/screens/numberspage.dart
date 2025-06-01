import 'package:flutter/material.dart';
import 'package:toku_learning_app/components/numberitems.dart';
import 'package:toku_learning_app/constant.dart';
import 'package:toku_learning_app/models/number.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});

  @override
  Widget build(BuildContext context) {
  
    List<Number> numbers = [
      Number(
        sound: 'sounds/numberssound/numberone.mp3',
        jpname: 'ichi',
        enname: 'one',
        image: 'assets/images/numbers/one.png',
      ),
      Number(
        sound: 'sounds/numberssound/numbertwo.mp3',
        jpname: 'ni',
        enname: 'two',
        image: 'assets/images/numbers/two.png',
      ),
      Number(
        sound: 'sounds/numberssound/numberthree.mp3',
        jpname: 'san',
        enname: 'three',
        image: 'assets/images/numbers/three.png',
      ),
      Number(
        sound: 'sounds/numberssound/numberfour.mp3',
        jpname: 'shi',
        enname: 'four',
        image: 'assets/images/numbers/four.png',
      ),
      Number(
        sound: 'sounds/numberssound/numberfive.mp3',
        jpname: 'go',
        enname: 'five',
        image: 'assets/images/numbers/five.png',
      ),
      Number(
        sound: 'sounds/numberssound/numbersix.mp3',
        jpname: 'roku',
        enname: 'six',
        image: 'assets/images/numbers/six.png',
      ),
      Number(
        image: 'assets/images/numbers/seven.png',
        jpname: 'nichi',
        enname: 'seven',
        sound: 'sounds/numberssound/numberseven.mp3',
      ),
    ];

    return SafeArea(
      child: Scaffold(
        appBar: getappbar(),
        body: ListView.builder(
          itemExtent: 120,
          itemBuilder: (context, index) => NumberItems(number: numbers[index]),
          itemCount: numbers.length,
        ),
      ),
    );
  }

  PreferredSizeWidget getappbar() {
    return PreferredSize(
      preferredSize: Size.fromHeight(70),
      child: AppBar(
        backgroundColor: AppColors.appbarcolor,
        title: Text('Numbers', style: AppStyle.appstyle),
      ),
    );
  }
}
