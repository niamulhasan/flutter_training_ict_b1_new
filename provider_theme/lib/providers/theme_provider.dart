import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  ThemeData? _theme;
  ThemeProvider(this._theme);

  ThemeData? getTheme() {
    return _theme;
  }

  void setTheme(ThemeData? theme) {
    _theme = theme;
    notifyListeners();
  }
}
