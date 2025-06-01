import 'package:audioplayers/audioplayers.dart';

class Family {
  String image;
  String enname;
  String sound;
  String jpname;
  Family({
    required this.jpname,
    required this.image,
    required this.enname,
    required this.sound,
  });

  playsound() {
    AudioPlayer().play(AssetSource(sound));
  }
}
