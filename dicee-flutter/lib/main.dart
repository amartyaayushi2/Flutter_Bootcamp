import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  print("welcome console user");
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red.shade600,
        appBar: AppBar(
          title: Text('Dicee'),
          centerTitle: true,
          backgroundColor: Colors.red.shade900,
        ),
        body: DicePage(),
      ),
    ),
  );
}


class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNo = 1;
  int rightDiceNo = 1;
  void Randomise()
  {
    leftDiceNo= Random().nextInt(6)+1;
    rightDiceNo= Random().nextInt(6)+1;
    print("clicked");
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              child: FlatButton(
                onPressed: (){
                  setState(() {
                   Randomise();
                  });
                  },
                child: Image.asset('images/dice$leftDiceNo.png'),
              )
          ),
          Expanded(
              child: FlatButton(
                onPressed: (){
                  setState(() {
                    Randomise();
                  });
                },
                child: Image.asset('images/dice$rightDiceNo.png'),
              ),
          ),
        ],
      ),
    );
  }
}



// class DicePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Expanded(
//             child: FlatButton(
//               onPressed: () {
//                 print("Press left");
//               },
//               child: Image.asset("images/dice1.png"),
//             ),
//           ),
//           Expanded(
//             child: FlatButton(
//               onPressed: (){
//                 print("Right Pressed");
//               },
//               child: Image.asset("images/dice2.png"),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
