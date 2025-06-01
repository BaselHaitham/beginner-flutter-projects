import 'package:audioplayers/audioplayers.dart';

class Number {
  final String image;
  final String jpname;
  final String enname;
  final String sound;

  Number({
    required this.image,
    required this.jpname,
    required this.enname,
    required this.sound,
  });
  playsound() {
  AudioPlayer().play(AssetSource(sound));
}

}
