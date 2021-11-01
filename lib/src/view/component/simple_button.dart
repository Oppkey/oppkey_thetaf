import 'package:flutter/material.dart';

class ThetaSimpleButton extends StatelessWidget {
  final String label;
  final Function action;
  final Color textColor;
  final Color backgroundColor;
  final double fontSize;
  const ThetaSimpleButton(
      {Key? key,
      required this.label,
      required this.action,
      this.textColor = Colors.lightBlue,
      this.backgroundColor = Colors.white,
      this.fontSize = 14.0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        style: ButtonStyle(
          textStyle: MaterialStateProperty.all<TextStyle>(
              TextStyle(fontSize: fontSize)),
          backgroundColor: MaterialStateProperty.all<Color>(backgroundColor),
          foregroundColor: MaterialStateProperty.all<Color>(textColor),
        ),
        onPressed: () {
          action();
        },
        child: Text(label));
  }
}
