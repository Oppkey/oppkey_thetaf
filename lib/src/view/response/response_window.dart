import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:thetaf/src/model/response_notifier.dart';

class ResponseWindow extends StatelessWidget {
  final int flex;
  final Color backgroundColor;
  final Color textColor;
  final double fontSize;

  const ResponseWindow({
    required this.flex,
    this.backgroundColor = Colors.white,
    this.textColor = Colors.black,
    this.fontSize = 14.0,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: flex,
        child: Container(
          color: backgroundColor,
          child: SingleChildScrollView(
              child: SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SelectableText(
                context.watch<ResponseNotifier>().responseText,
                style: TextStyle(color: textColor, fontSize: fontSize),
              ),
            ),
          )),
        ));
  }
}
