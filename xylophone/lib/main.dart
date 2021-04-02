import 'package:flutter/material.dart';
// import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Expanded BuildKey({Color color, int s}) {
    return Expanded(
      child: TextButton(
        style: ButtonStyle(backgroundColor: MaterialStateProperty.all(color)),
        onPressed: () {
          final player = AudioCache();
          player.play("note" + "$s" + ".wav");
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              BuildKey(color: Colors.red, s: 1),
              BuildKey(color: Colors.orange, s: 2),
              BuildKey(color: Colors.yellow, s: 3),
              BuildKey(color: Colors.blue, s: 4),
              BuildKey(color: Colors.green, s: 5),
              BuildKey(color: Colors.pink, s: 6),
              BuildKey(color: Colors.tealAccent, s: 7),
            ],
          ),
        ),
      ),
    );
  }
}
