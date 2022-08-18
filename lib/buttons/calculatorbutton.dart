

import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
   final String text;
  final  int fillcolor;
  final  int textcolor;
  final double textSize;
  final Function callback;
  //final Function callback;

  const CalculatorButton({
    required this.fillcolor,
   required this.text,
   required this.textcolor,
   required this.textSize,
   required this.callback
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(13.0),
      child: SizedBox(
        width: 70,
        height: 70,
        child: FlatButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Text(
            text,
            textScaleFactor: 1.85,
          ),
          onPressed: () => callback(text),
          color: Color(fillcolor),
          textColor: Color(textcolor),
        ),
      ),
    );
  }
}
