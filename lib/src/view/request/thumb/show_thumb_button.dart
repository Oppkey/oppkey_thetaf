import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theta/theta.dart';
import 'package:thetaf/src/model/window_notifier.dart';

/// Show thumbnails
class ShowThumbButton extends StatelessWidget {
  final ButtonStyle? style;
  final FocusNode? focusNode;
  final bool autofocus;
  final Clip clipBehavior;

  const ShowThumbButton({
    Key? key,
    this.style,
    this.focusNode,
    this.autofocus = false,
    this.clipBehavior = Clip.none,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        style: style,
        focusNode: focusNode,
        autofocus: autofocus,
        clipBehavior: clipBehavior,
        onPressed: () async {
          List<String> thumbData = await sc2ThumbGetBytes();
          Provider.of<WindowNotifier>(context, listen: false)
              .setThumbData(thumbData);
          Provider.of<WindowNotifier>(context, listen: false)
              .setShowThumbWindow(true);
        },
        child: const Text('thumbs'));
  }
}
