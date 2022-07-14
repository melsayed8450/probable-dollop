import 'dart:ffi';

import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  final String buttonText;
  final Color buttonColor;
  final Function onPress;
  RoundButton(
      {@required this.buttonText,
      @required this.buttonColor,
      @required this.onPress});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        color: buttonColor,
        borderRadius: BorderRadius.circular(30.0),
        elevation: 5.0,
        child: MaterialButton(
          onPressed: onPress,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            buttonText,
          ),
        ),
      ),
    );
  }
}
