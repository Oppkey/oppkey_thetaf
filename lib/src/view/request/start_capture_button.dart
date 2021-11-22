import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theta/theta.dart';
import 'package:thetaf/src/model/response_notifier.dart';

/// start interval shooting, interval composite shooting,
/// multi bracket shooting, time shift shooting
/// If no mode parameter is set, the camera will use interval
/// shooting.
///
/// example of interval capture
///
/// ```
///  StartCaptureButton(
///    label: 'Interval Capture'
///    mode: 'interval'),
/// ```
///
/// Example of time shift, which takes two images using one lense for
/// each image and then combines the two images into a single image.
/// This is used to eliminate the photographer from the picture.
///
/// ```
/// StartCaptureButton(
/// label: 'time shift', mode: 'timeShift'),
/// ```
///
/// https://api.ricoh/docs/theta-web-api-v2.1/commands/camera.start_capture/
///
/// returns a list of URLs of the images that were captured.
///
/// Output
///
/// ```
/// {
///  "name": "camera.stopCapture",
///  "results": {
///    "fileUrls": [
///      "http://192.168.1.1/files/150100524436344d42013765da9bc400/101RICOH/R0020020.JPG",
///      "http://192.168.1.1/files/150100524436344d42013765da9bc400/101RICOH/R0020021.JPG"
///    ]
///  },
///  "state": "done"
/// }
/// ```

class StartCaptureButton extends StatelessWidget {
  final ButtonStyle? style;
  final FocusNode? focusNode;
  final bool autofocus;
  final Clip clipBehavior;
  final String label;
  final String mode;

  const StartCaptureButton({
    Key? key,
    this.style,
    this.focusNode,
    this.autofocus = false,
    this.clipBehavior = Clip.none,
    this.label = 'Start Capture',
    this.mode = 'interval',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        style: style,
        focusNode: focusNode,
        autofocus: autofocus,
        clipBehavior: clipBehavior,
        onPressed: () async {
          var response =
              await command('startCapture', parameters: {'_mode': mode});
          Provider.of<ResponseNotifier>(context, listen: false)
              .setResponseText(response);
        },
        child: Text(label));
  }
}
