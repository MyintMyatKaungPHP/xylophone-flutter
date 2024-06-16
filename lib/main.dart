import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  void playNote(int noteNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$noteNumber.wav'));
  }

  Expanded noteBar({required int note, required Color color}) {
    return Expanded(
      child: Container(
          color: color,
          child: TextButton(
            child: Text(
              '$note',
              style: const TextStyle(color: Colors.white, fontSize: 30),
            ),
            onPressed: () => playNote(note),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text("Xylophone"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            noteBar(note: 1, color: Colors.red),
            noteBar(note: 2, color: Colors.orange),
            noteBar(note: 3, color: Colors.yellow),
            noteBar(note: 4, color: Colors.green),
            noteBar(note: 5, color: Colors.cyan),
            noteBar(note: 6, color: Colors.blue),
            noteBar(note: 7, color: Colors.purple),
          ],
        ),
      ),
    );
  }
}
