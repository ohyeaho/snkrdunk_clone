import 'package:flutter/material.dart';

class MarketModel extends ChangeNotifier {
  int segmentedControlValue = 0;

  changeValue(int value) {
    segmentedControlValue = value;
    notifyListeners();
  }
}
