import 'package:audioplayers/audioplayers.dart';

class Colorss {
  String enname;
  String jpname;
  String image;
  String sound;

  Colorss({
    required this.enname,
    required this.image,
    required this.jpname,
    required this.sound,

  });


  playsound() {
  AudioPlayer().play(AssetSource(sound));
}

}
