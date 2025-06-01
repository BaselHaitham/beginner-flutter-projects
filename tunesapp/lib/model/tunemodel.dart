import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/widgets.dart';

class TuneModel {
  final Color color;
  final String path;
  const TuneModel({required this.color, required this.path});
  void playsound() {
    AudioPlayer play = AudioPlayer();
    play.play(AssetSource(path));
  }
}
