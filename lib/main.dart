import 'package:flutter/material.dart';
import 'package:audiofileplayer/audiofileplayer.dart';
void main() {
  runApp(const Xylophone());

}

class Xylophone extends StatelessWidget {
  const Xylophone({super.key});
  void playSound(int soundNumber){
    Audio.load('assets/note$soundNumber.wav')..play()..dispose();

  }


  Expanded buildKey({ color, soundNumber}){
    return Expanded(
      child: Container(
        color:color,
        child: TextButton(onPressed: () { playSound(soundNumber); },child: const Text('')),
      ),
    );

  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(child: Center(
          child: Expanded(
            child: Column(
              crossAxisAlignment:CrossAxisAlignment.stretch,
              children:[
                buildKey(color: Colors.red, soundNumber: 1),
                buildKey(color: Colors.orange, soundNumber: 2),
                buildKey(color: Colors.yellow, soundNumber: 3),
                buildKey(color: Colors.teal, soundNumber: 4),
                buildKey(color: Colors.blue, soundNumber: 5),
                buildKey(color: Colors.indigo, soundNumber: 6),
                buildKey(color: Colors.purple, soundNumber: 7),
              ],
            ),
          ),
        ),
        ),
      ),
    );
  }
}

