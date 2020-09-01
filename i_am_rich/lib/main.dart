import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(
        title: Text("I am Rich"),
        backgroundColor: Colors.black87,
      ),
      body: Center(
        child: Image(
          image:
            AssetImage("Images/diamond.png"),
      ),
    ),
  ),
  ),
  );
}
