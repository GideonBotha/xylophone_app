import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int fileNumber) {
    final player = AudioPlayer();
    player.play(
      AssetSource('note$fileNumber.wav'),
    );
  }

  Widget buildButton(
      {required int soundNumber,
      required String keyNote,
      required Color color}) {
    return Expanded(
      child: TextButton(
        style: ButtonStyle(backgroundColor: MaterialStateProperty.all(color)),
        onPressed: () => playSound(soundNumber),
        child: Text(keyNote),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildButton(soundNumber: 1, keyNote: 'A', color: Colors.red),
                buildButton(soundNumber: 2, keyNote: 'B', color: Colors.orange),
                buildButton(soundNumber: 3, keyNote: 'C', color: Colors.yellow),
                buildButton(soundNumber: 4, keyNote: 'D', color: Colors.green),
                buildButton(
                    soundNumber: 5, keyNote: 'E', color: Colors.green.shade900),
                buildButton(soundNumber: 6, keyNote: 'F', color: Colors.blue),
                buildButton(
                    soundNumber: 7,
                    keyNote: 'G',
                    color: Colors.purple.shade600),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
