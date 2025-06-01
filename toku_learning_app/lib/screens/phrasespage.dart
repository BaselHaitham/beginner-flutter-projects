import 'package:flutter/material.dart';
import 'package:toku_learning_app/components/phrasesitems.dart';
import 'package:toku_learning_app/constant.dart';
import 'package:toku_learning_app/models/phrases.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Phrases> phrases = [
      Phrases(
        enname: 'Are you coming',
        jpname: 'Kimasu ka',
        sound: 'sounds/phrases/are_you_coming.wav',
      ),
      Phrases(
        enname: 'dont forget to subscribe',
        jpname: 'Kōdoku o o wasurenaku',
        sound: 'sounds/phrases/dont_forget_to_subscribe.wav',
      ),
      Phrases(
        enname: 'how are you feeling',
        jpname: 'Go kibun wa ikagadesu ka.',
        sound: 'sounds/phrases/how_are_you_feeling.wav',
      ),
      Phrases(
        enname: 'i love anime',
        jpname: 'Watashiwa anime ga daisukidesu',
        sound: 'sounds/phrases/i_love_anime.wav',
      ),
      Phrases(
        enname: 'i love programming',
        jpname: 'Watashi wa puroguramingu ga daisukidesu',
        sound: 'sounds/phrases/i_love_programming.wav',
      ),
      Phrases(
        enname: 'what is your name',
        jpname: 'Anata no namae wa nandesuka',
        sound: 'sounds/phrases/what_is_your_name.wav',
      ),
      Phrases(
        enname: 'where are you going',
        jpname: 'Doko ni iku no',
        sound: 'sounds/phrases/where_are_you_going.wav',
      ),
      Phrases(
        enname: 'yes im coming',
        jpname: 'Hai ikimasu',
        sound: 'sounds/phrases/yes_im_coming.wav',
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.appbarcolor,
        title: Text('Phrases', style: AppStyle.appstyle),
      ),

      body: SingleChildScrollView(child: Column(children: getitems(phrases))),
    );
  }

  List<Widget> getitems(List<Phrases> phrases) {
    List<Widget> items = [];
    for (var i = 0; i < phrases.length; i++) {
      items.add(PhrasesItem(phrases: phrases[i]));
    }
    return items;
  }
}
