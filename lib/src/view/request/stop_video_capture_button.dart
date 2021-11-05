import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theta/theta.dart';
import 'package:thetaf/src/model/response_notifier.dart';

class StopVideoCaptureButton extends StatelessWidget {
  final ButtonStyle? style;
  final FocusNode? focusNode;
  final bool autofocus;
  final Clip clipBehavior;
  final String label;

  const StopVideoCaptureButton({
    Key? key,
    this.style,
    this.focusNode,
    this.autofocus = false,
    this.clipBehavior = Clip.none,
    this.label = 'Stop Video Capture',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        style: style,
        focusNode: focusNode,
        autofocus: autofocus,
        clipBehavior: clipBehavior,
        onPressed: () async {
          var response = await command('stopCapture');
          Provider.of<ResponseNotifier>(context, listen: false)
              .setResponseText(response);
        },
        child: Text(label));
  }
}
