import 'package:audioplayers/audioplayers.dart';

class Phrases {
  String enname;
  String jpname;
  String sound;
  

  Phrases({
    required this.enname,
    required this.jpname,

    required this.sound,
  });

  playsound() {
  AudioPlayer().play(AssetSource(sound));
}

}
