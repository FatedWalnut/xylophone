import 'package:flutter/material.dart';
import 'package:audiofileplayer/audiofileplayer.dart';
void main() {
  runApp(const xylophone());

}

class xylophone extends StatelessWidget {
  const xylophone({super.key});
  void playSound(int soundNumber){
    Audio.load('assets/note$soundNumber.wav')..play()..dispose();

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
              mainAxisAlignment: MainAxisAlignment.start,
              children:[
                Expanded(
                  child: Container(
                    width: double.infinity,
                    color: Colors.red,
                    child: TextButton(onPressed: () { playSound(1); },child: Text('')),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    color: Colors.orange,
                    child: TextButton(onPressed: () {playSound(2); },child: Text('')),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    color: Colors.yellow,
                    child: TextButton(onPressed: () {playSound(3);},child: Text('')),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    color: Colors.teal,
                    child: TextButton(onPressed: () {playSound(4);},child: Text('')),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    color: Colors.blue,
                    child: TextButton(onPressed: () {playSound(5);},child: Text('')),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    color: Colors.indigo[900],
                    child: TextButton(onPressed: () {playSound(6);},child: Text('')),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    color: Colors.purple[800],
                    child: TextButton(onPressed: () {playSound(7); },child: Text('')),
                  ),
                ),
                ]
            ),
          ),
        )

        ),
        ),
    );
  }
}

