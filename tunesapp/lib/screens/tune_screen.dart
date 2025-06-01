import 'package:flutter/material.dart';
import 'package:tunesapp/core/utils/appstyles.dart';
import 'package:tunesapp/model/tunemodel.dart';
import 'package:tunesapp/widgets/tunesitem.dart';

class TuneScreen extends StatelessWidget {
  const TuneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<TuneModel> tunes = [
      TuneModel(color: Colors.amberAccent, path: 'sounds/note1.wav'),
      TuneModel(color: Colors.cyan, path: 'sounds/note2.wav'),
      TuneModel(color: Colors.black, path: 'sounds/note3.wav'),
      TuneModel(color: Colors.blueGrey, path: 'sounds/note4.wav'),
      TuneModel(color: Colors.orange, path: 'sounds/note5.wav'),
      TuneModel(color: Colors.blue, path: 'sounds/note6.wav'),
      TuneModel(color: Colors.deepPurpleAccent, path: 'sounds/note7.wav'),
    ];
    return Scaffold(
      appBar: getappbar(context),
      body: Column(children: tunes.map((e) => TuneItem(item: e)).toList()),
    );
  }

  AppBar getappbar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.deepPurpleAccent,
      titleSpacing: 0,
      leading: Image.asset('assets/images/logo.png'),
      title: Text('Tunes', style: AppStyles.splashStyle(context)),
    );
  }
}
