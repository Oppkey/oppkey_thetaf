import 'package:flutter/widgets.dart';

class WindowNotifier extends ChangeNotifier {
  // thumbnail windows
  bool _showThumbWindow = false;
  bool get showThumbWindow => _showThumbWindow;
  void setShowThumbWindow(bool showThumbWindow) {
    _showThumbWindow = showThumbWindow;
    notifyListeners();
  }

  List<String> _thumbData = [];
  List<String> get thumbData => _thumbData;
  void setThumbData(thumbData) {
    _thumbData = thumbData;
    notifyListeners();
  }
}
