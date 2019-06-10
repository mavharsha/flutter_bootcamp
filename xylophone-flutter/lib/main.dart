import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            musicNote(Colors.blue.shade900, "notes1.wav"),
            musicNote(Colors.blue.shade800, "notes2.wav"),
            musicNote(Colors.blue.shade700, "notes3.wav"),
            musicNote(Colors.blue.shade600, "notes4.wav"),
            musicNote(Colors.blue.shade500, "notes5.wav"),
            musicNote(Colors.blue.shade400, "notes6.wav"),
            musicNote(Colors.blue.shade300, "notes7.wav"),
          ],
        ),
      ),
    );
  }
  musicNote(Color color, String noteName) {
    return Expanded(
      child: FlatButton(onPressed: () {
        final audioPlayer = AudioCache();
        audioPlayer.play(noteName);
      },
        color: color,),
    );
  }
}


class MusicNotes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        musicNote(Colors.blue.shade900, ""),
        musicNote(Colors.blue.shade800, ""),
        musicNote(Colors.blue.shade700, ""),
        musicNote(Colors.blue.shade600, ""),
        musicNote(Colors.blue.shade500, ""),
        musicNote(Colors.blue.shade400, ""),
        musicNote(Colors.blue.shade300, ""),
      ],
    );
  }

  musicNote(Color color, String noteName) {
    return Expanded(
      child: FlatButton(onPressed: () {

      },
      color: color,),
    );
  }
}
