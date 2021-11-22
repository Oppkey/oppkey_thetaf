import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theta/theta.dart';
import 'package:thetaf/src/model/response_notifier.dart';

/// If the camera is in video mode, this will start recording a video.
/// Use with [StopVideoCaptureButton] to stop the video.
///
/// If the camera is in still image mode, it will start
/// continuous shooting. The shooting method changes according
/// to shooting mode (captureMode) and `_mode` parameter in cases
/// where the camera is in still image mode.  If no `_mode` parameter
/// is specified, then interval shooting with start.
class StartVideoCaptureButton extends StatelessWidget {
  final ButtonStyle? style;
  final FocusNode? focusNode;
  final bool autofocus;
  final Clip clipBehavior;
  final String label;

  const StartVideoCaptureButton({
    Key? key,
    this.style,
    this.focusNode,
    this.autofocus = false,
    this.clipBehavior = Clip.none,
    this.label = 'Start Video Capture',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        style: style,
        focusNode: focusNode,
        autofocus: autofocus,
        clipBehavior: clipBehavior,
        onPressed: () async {
          var response = await command('startCapture');
          Provider.of<ResponseNotifier>(context, listen: false)
              .setResponseText(response);
        },
        child: Text(label));
  }
}
