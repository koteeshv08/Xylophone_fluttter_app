import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSounds(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({Color colors, int soundNumber}) {
    return Expanded(
      child: FlatButton(
        color: colors,
        onPressed: () {
          playSounds(soundNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(soundNumber: 1, colors: Colors.red),
              buildKey(soundNumber: 2, colors: Colors.orange),
              buildKey(soundNumber: 3, colors: Colors.yellow),
              buildKey(soundNumber: 4, colors: Colors.green),
              buildKey(soundNumber: 5, colors: Colors.blue),
              buildKey(soundNumber: 6, colors: Colors.indigo),
              buildKey(soundNumber: 7, colors: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
