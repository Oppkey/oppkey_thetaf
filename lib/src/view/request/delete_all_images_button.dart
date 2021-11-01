import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theta/theta.dart';
import 'package:thetaf/src/model/response_notifier.dart';

class DeleteAllImagesButton extends StatelessWidget {
  final ButtonStyle? style;
  final FocusNode? focusNode;
  final bool autofocus;
  final Clip clipBehavior;

  const DeleteAllImagesButton({
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
          // Needs more testing. Code appears accurate. Deletes all files, not just images. Bug possible.
          var response = await command('delete', parameters: {
            'fileUrls': ['image']
          });
          Provider.of<ResponseNotifier>(context, listen: false)
              .setResponseText(response);
        },
        child: const Text('DO NOT USE - delete all images (images only)'));
  }
}
