import 'package:flutter/material.dart';

class IndexProvider with ChangeNotifier {
  int selectedIndex = 0;
  int setIndex = 0;
  void setSelectedIndex() {
    setIndex = selectedIndex;
    print(setIndex);
    notifyListeners();
  }
}
