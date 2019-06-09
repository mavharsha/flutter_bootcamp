import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
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
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void rollTheDice() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;

    });
    print('Left dice: $leftDiceNumber');
    print('Right dice: $rightDiceNumber');
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
              child: FlatButton(
                onPressed: () {
                 rollTheDice();
                },
                child: Image.asset('images/dice$leftDiceNumber.png'),
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: () {
                  rollTheDice();
                },
                child: Image.asset('images/dice$rightDiceNumber.png'),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
