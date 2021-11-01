import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:thetaf/src/model/response_notifier.dart';
import 'package:thetaf/src/model/window_notifier.dart';

class ThumbWindow extends StatelessWidget {
  final int flex;
  const ThumbWindow({
    required this.flex,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return !context.watch<WindowNotifier>().showThumbWindow
        ? Expanded(
            flex: flex,
            child: SingleChildScrollView(
                child: SizedBox(
                    width: double.infinity,
                    child: SelectableText(
                        context.watch<ResponseNotifier>().responseText))))
        : Expanded(
            flex: flex,
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 500,
                  crossAxisSpacing: 2,
                  childAspectRatio: 2,
                ),
                itemCount: context.watch<WindowNotifier>().thumbData.length,
                itemBuilder: (context, index) {
                  var thumb64List = context.watch<WindowNotifier>().thumbData;
                  return Image.memory(base64Decode(thumb64List[index]));
                }),
          );
  }
}
