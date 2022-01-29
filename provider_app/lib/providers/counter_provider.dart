import 'package:flutter/foundation.dart';

class CounterProvider with ChangeNotifier {
  int _counter = 0;

  int getCounter() => _counter;

  void increase() {
    _counter++;
    notifyListeners();
  }
}
