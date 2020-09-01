import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.white30,
      appBar: AppBar(
        leading: Icon(
          Icons.agriculture
        ),
        title: Text("I am Poor"),
        centerTitle: true,
        backgroundColor: Colors.black87,
      ),
      body: Center(
        child: Image(
          image: NetworkImage("https://images.fineartamerica.com/images/artworkimages/mediumlarge/1/hands-of-poverty-morgan-morano.jpg"),
        ),
      ),
      ),
    ),);
}

