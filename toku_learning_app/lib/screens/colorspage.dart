import 'package:flutter/material.dart';
import 'package:toku_learning_app/components/colorsitems.dart';
import 'package:toku_learning_app/constant.dart';
import 'package:toku_learning_app/models/colors.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Colorss> colors = [
      Colorss(
        enname: 'black',
        image: 'assets/images/colorsimage/black.png',
        jpname: 'burakku',
        sound: 'sounds/colors/black.wav',
      ),
      Colorss(
        enname: 'brown',
        image: 'assets/images/colorsimage/brown.png',
        jpname: 'chairo',
        sound: 'sounds/colors/brown.wav',
      ),
      Colorss(
        enname: 'dustyyellow',
        image: 'assets/images/colorsimage/dusty_yellow.png',
        jpname: 'Dasutiierō',
        sound: 'sounds/colors/dusty yellow.wav',
      ),
      Colorss(
        enname: 'gray',
        image: 'assets/images/colorsimage/gray.png',
        jpname: 'Gurē',
        sound: 'sounds/colors/gray.wav',
      ),
      Colorss(
        enname: 'green',
        image: 'assets/images/colorsimage/green.png',
        jpname: 'Midori',
        sound: 'sounds/colors/green.wav',
      ),
      Colorss(
        enname: 'red',
        image: 'assets/images/colorsimage/red.png',
        jpname: 'Aka',
        sound: 'sounds/colors/red.wav',
      ),
      Colorss(
        enname: 'white',
        image: 'assets/images/colorsimage/white.png',
        jpname: 'shiro',
        sound: 'sounds/colors/white.wav',
      ),
    ];

    return SafeArea(
      child: Scaffold(
        appBar: getappbar(),
        body: SingleChildScrollView(child: Column(children: getitems(colors))),
      ),
    );
  }

  List<Widget> getitems(List<Colorss> colors) {
    List<Widget> items = [];

    for (var i = 0; i < colors.length; i++) {
      items.add(ColorsItem(colors: colors[i]));
    }
    return items;
  }

  PreferredSizeWidget getappbar() {
    return PreferredSize(
      preferredSize: Size.fromHeight(70),
      child: AppBar(
        backgroundColor: AppColors.appbarcolor,
        title: Text('Colors', style: AppStyle.appstyle),
      ),
    );
  }
}

