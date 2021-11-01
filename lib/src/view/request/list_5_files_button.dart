import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theta/theta.dart';
import 'package:thetaf/src/model/response_notifier.dart';

class List5FilesButton extends StatelessWidget {
  final ButtonStyle? style;
  final FocusNode? focusNode;
  final bool autofocus;
  final Clip clipBehavior;

  const List5FilesButton({
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
          var response = await command('listFiles', parameters: {
            'entryCount': 5,
            'maxThumbSize': 0,
            'fileType': 'image'
          });
          Provider.of<ResponseNotifier>(context, listen: false)
              .setResponseText(response);
        },
        child: const Text('list 5 files'));
  }
}