import 'package:flutter/material.dart';
import 'package:flutter_syntax_view/flutter_syntax_view.dart';
import 'package:provider/provider.dart';
import 'package:thetaf/src/model/response_notifier.dart';

/// shows a window with syntax highlighting and line numbering.
/// It is an Expanded Widget.  You can specify the space
/// it takes up with flex.
/// ```
/// ThetaSyntaxWindow(flex: 10)
/// ```
class ThetaSyntaxWindow extends StatelessWidget {
  final int flex;
  final double fontSize;

  const ThetaSyntaxWindow({
    Key? key,
    this.flex = 10,
    this.fontSize = 18,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: SyntaxView(
        code: context.watch<ResponseNotifier>().responseText,
        syntax: Syntax.JAVASCRIPT,
        syntaxTheme: SyntaxTheme.dracula(),
        fontSize: fontSize,
        expanded: true,
      ),
    );
  }
}
