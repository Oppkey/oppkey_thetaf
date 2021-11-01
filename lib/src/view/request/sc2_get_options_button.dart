import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theta/theta.dart';
import 'package:thetaf/src/model/response_notifier.dart';
import 'package:thetaf/src/view/component/simple_button.dart';

class Sc2GetOptionsButton extends StatelessWidget {
  final double fontSize;
  final Color textColor;
  final Color backgroundColor;

  const Sc2GetOptionsButton({
    this.fontSize = 14.0,
    this.textColor = Colors.black,
    this.backgroundColor = Colors.white,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ThetaSimpleButton(
        fontSize: fontSize,
        backgroundColor: backgroundColor,
        textColor: textColor,
        action: () async {
          var response = await getSc2Options();
          Provider.of<ResponseNotifier>(context, listen: false)
              .setResponseText(response);
        },
        label: 'SC2 options');
  }
}
