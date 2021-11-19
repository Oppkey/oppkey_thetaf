import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theta/theta.dart';
import 'package:thetaf/src/model/response_notifier.dart';
import 'package:thetaf/src/view/component/simple_button.dart';

/// Get the state of camera. Includes API version, batteryLevel,
/// _latestFileUrl and more.
class StateButtonSimple extends StatelessWidget {
  final double fontSize;
  final Color textColor;
  final Color backgroundColor;
  final String label;

  const StateButtonSimple({
    this.fontSize = 14.0,
    this.textColor = Colors.black,
    this.backgroundColor = Colors.white,
    this.label = 'State',
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ThetaSimpleButton(
        fontSize: fontSize,
        backgroundColor: backgroundColor,
        textColor: textColor,
        action: () async {
          var response = await ThetaBase.post('state');
          Provider.of<ResponseNotifier>(context, listen: false)
              .setResponseText(response);
        },
        label: label);
  }
}
