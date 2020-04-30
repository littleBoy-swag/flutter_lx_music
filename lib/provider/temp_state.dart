import 'package:flutter/material.dart';

class TempState with ChangeNotifier {
  int _count;

  get count => _count;

  // 接口方法
  void updateRightTitles(int count) {
    _count = count;
    notifyListeners();
  }
}
