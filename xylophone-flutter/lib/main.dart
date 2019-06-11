import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.blue,
      body: MusicNotes(),
    ));
  }
}

class MusicNotes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        musicNote(Colors.blue.shade900, "note1.wav"),
        musicNote(Colors.blue.shade800, "note2.wav"),
        musicNote(Colors.blue.shade700, "note3.wav"),
        musicNote(Colors.blue.shade600, "note4.wav"),
        musicNote(Colors.blue.shade500, "note5.wav"),
        musicNote(Colors.blue.shade400, "note6.wav"),
        musicNote(Colors.blue.shade300, "note7.wav"),
      ],
    );
  }

  musicNote(Color color, String noteName) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          final audioPlayer = AudioCache();
          audioPlayer.play(noteName);
        },
        color: color,
      ),
    );
  }
}
