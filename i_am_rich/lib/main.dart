import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
    appBar: AppBar(
      title: Text("I'm Rich"),
      backgroundColor: Colors.blueGrey[900],
    ),
    backgroundColor: Colors.blueGrey,
    body: Center(
      child: Image(
        image: AssetImage('images/diamond.png'),
      ),
    ),
  )));
}
