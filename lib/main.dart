import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  double playSound(int soundNumber){
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({Color color, int sn}){
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: (){playSound(sn);},
      ),
    );

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: SizedBox.fromSize(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget> [
                buildKey(color: Colors.red , sn: 1),
                buildKey(color: Colors.orange , sn: 2),
                buildKey(color: Colors.yellow , sn: 3),
                buildKey(color: Colors.green , sn: 4),
                buildKey(color: Colors.teal , sn: 5),
                buildKey(color: Colors.blue , sn: 6),
                buildKey(color: Colors.purple , sn: 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

