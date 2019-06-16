import 'package:flutter/material.dart';

import '../constants.dart';

class BottomButton extends StatelessWidget {

  final Function onPress;
  final String text;


  BottomButton({this.onPress, this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: Center(
            child: Text(
              text,
              style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white70,
                  fontWeight: FontWeight.bold),
            )),
        color: bottomContainerColor,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 15.0),
        height: bottomContainerHeight,
        width: double.infinity,
      ),
    );
  }
}
