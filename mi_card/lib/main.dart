import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MiCard());
}

class MiCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal.shade50,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 90.0,
              backgroundImage: AssetImage("images/a.jpg"),
            ),
            Text(
              "Amartya Ayushi",
              style: TextStyle(
                color: Colors.black87,
                fontSize: 50,
                fontFamily: "pacifico",
                letterSpacing: 2.5,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "FLUTTER DEVELOPER",
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontFamily: "russo",
                fontSize: 15,
                letterSpacing: 5,
                color: Colors.teal,
              ),
            ),
            SizedBox(
              height: 40,
              width: 150,
              child: Divider(
              color: Colors.lightGreen,
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              color: Colors.blue.shade50,
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  color: Colors.red,
                ),
                title: Text(
                  "+91 xxxxxx",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.teal,
                    fontFamily: "Sans",
                  ),

                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              color: Colors.blue.shade50,
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.red,
                ),
                title: Text(
                  "abcd@gmail.com",
                  style: TextStyle(
                    fontFamily: "Sans",
                    color: Colors.teal,
                    fontSize: 20,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
