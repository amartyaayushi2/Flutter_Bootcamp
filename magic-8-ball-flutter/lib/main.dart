import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home:AskMeAnything(),
        debugShowCheckedModeBanner: false,
        ),
    );

class AskMeAnything extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ask Me Anything"),
        backgroundColor: Colors.redAccent,
      ),
      body: Ball(),
      backgroundColor: Colors.blue[100],
    );
  }
}
class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNo = 1;
  void random(){
    setState(() {
        ballNo = Random().nextInt(5)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: TextButton(
            onPressed: (){
              random();
              print(ballNo);
            },
            child: Image.asset('images/ball'+"$ballNo"+'.png'),
          ),
        ),
      ],
    );
  }
}

