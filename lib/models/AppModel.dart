import 'package:flutter/foundation.dart';

class AppModel extends ChangeNotifier {
  int appNumber = 0;

  void incrementAppNumber() {
    appNumber = appNumber + 1;
    notifyListeners();
  }
}
