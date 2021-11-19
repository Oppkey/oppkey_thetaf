import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theta/theta.dart';
import 'package:thetaf/src/model/response_notifier.dart';
import 'package:thetaf/src/view/component/simple_button.dart';

/// Gets info which includes model, firmware version, API version,
/// serial number, uptime, and more.
class InfoButtonSimple extends StatelessWidget {
  final Color textColor;
  final Color backgroundColor;
  final double fontSize;
  final String label;

  const InfoButtonSimple({
    this.textColor = Colors.black,
    this.backgroundColor = Colors.white,
    this.fontSize = 14.0,
    this.label = 'Info',
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
        label: label);
  }
}
