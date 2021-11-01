import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theta/theta.dart';
import 'package:thetaf/src/model/response_notifier.dart';
import 'package:thetaf/src/view/component/simple_button.dart';

class InfoButton extends StatelessWidget {
  final Color textColor;
  final Color backgroundColor;
  final double fontSize;
  const InfoButton({
    this.textColor = Colors.black,
    this.backgroundColor = Colors.white,
    this.fontSize = 14.0,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ThetaSimpleButton(
        fontSize: fontSize,
        backgroundColor: backgroundColor,
        textColor: textColor,
        action: () async {
          var response = await ThetaBase.get('info');
          Provider.of<ResponseNotifier>(context, listen: false)
              .setResponseText(response);
        },
        label: 'info');
  }
}
