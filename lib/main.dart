// import 'package:flutter/material.dart';
// import 'package:audioplayers/audioplayers.dart';
//
// void main() => runApp(XylophoneApp());
//
// class XylophoneApp extends StatelessWidget {
//   void playSound(int soundNumber) {
//     final player = AudioPlayer();
//      player.play(AssetSource('note$soundNumber.wav'));
//   }
//   Expanded buildKey( Color color, int soundNumber){
//    return Expanded(
//       child: TextButton(
//         onPressed: () async {
//           playSound(soundNumber);
//         },
//         style: TextButton.styleFrom(backgroundColor:Colors.red,
//         ),
//
//         //
//         //     child: Container(
//         //
//         //     padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
//         //       color: Colors.red,
//         //  // <-- Does not work
//         child: Text(""),
//
//       ),
//
//     );
//   }
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         backgroundColor: Colors.black,
//         body: SafeArea(
//           child: Column(
//            crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: <Widget>[
//
//              buildKey(color : Colors.red, soundNumber: 1),
//               buildKey(),
//               buildKey(),
//               buildKey(),
//               buildKey(),
//               buildKey(),
//             ],
//           ),
//         ),
//       )
//
//
//
//
//
//     );
//
//   }
// }
//
//
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

 class XylophoneApp extends StatelessWidget {
   void playSound(int soundNumber) {
     final player = AudioPlayer();
      player.play(AssetSource('note$soundNumber.wav'));
   }

  Expanded buildKey(@required Color colName, @required int soundNumber) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(soundNumber);
        },
        style: ButtoStyle(backgroundColor: MaterialStatePropertyAll(Colors.red),
        ),
        child: Text(''), // Empty text widget
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
              buildKey(colName: Colors.red, soundNumber: 1),
              buildKey(color: Colors.orange, soundNumber: 2),
              buildKey(color: Colors.yellow, soundNumber: 3),
              buildKey(color: Colors.green, soundNumber: 4),
              buildKey(color: Colors.blue, soundNumber: 5),
              buildKey(color: Colors.purple, soundNumber: 6),
            ],
          ),
        ),
      ),
    );
  }
}



