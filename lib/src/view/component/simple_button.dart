import 'package:flutter/material.dart';

/// Simplified OutlinedButton that can receive parameters for
/// textColor, backgroundColor of the button, fontSize, and label.
/// Most of the buttons use the more powerful OutlinedButton with
/// more styling control. The [ThetaSimpleButton] uses a smaller
/// subset of styling options to make the syntax easier to read.
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
