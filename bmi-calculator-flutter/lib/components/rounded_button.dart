import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final IconData iconData;
  final Function onPress;

  RoundedButton({@required this.iconData, @required this.onPress});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(iconData),
      onPressed: onPress,
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}