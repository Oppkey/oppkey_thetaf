import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:thetaf/src/command/file/get_path.dart';
import 'package:thetaf/src/model/response_notifier.dart';
import 'package:thetaf/src/view/component/simple_button.dart';

/// Download the image.
class DownloadButton extends StatelessWidget {
  final Color textColor;
  final Color backgroundColor;
  final double fontSize;
  final String label;

  const DownloadButton({
    this.textColor = Colors.black,
    this.backgroundColor = Colors.white,
    this.fontSize = 14.0,
    this.label = 'download',
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ThetaSimpleButton(
        fontSize: fontSize,
        backgroundColor: backgroundColor,
        textColor: textColor,
        action: () async {
          var response = await getPath(FileType.thumb);
          Provider.of<ResponseNotifier>(context, listen: false)
              .setResponseText(response);
        },
        label: label);
  }
}
