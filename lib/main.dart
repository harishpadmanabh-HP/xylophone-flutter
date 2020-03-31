import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int sound) {
    final player = AudioCache();
    player.play('note$sound.wav');
  }

  Expanded drawKey({Color color, int soundnum}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundnum);
          //create new player by creting object
          //give only file name and it should be in assets folder
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                drawKey(color: Colors.pink, soundnum: 1),
                drawKey(color: Colors.indigo, soundnum: 2),
                drawKey(color: Colors.blue, soundnum: 3),
                drawKey(color: Colors.green, soundnum: 4),
                drawKey(color: Colors.yellow, soundnum: 5),
                drawKey(color: Colors.orange, soundnum: 6),
                drawKey(color: Colors.red, soundnum: 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
