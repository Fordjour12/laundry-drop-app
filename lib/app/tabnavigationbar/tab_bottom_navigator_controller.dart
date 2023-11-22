import 'package:flutter/material.dart';

// BottomNavigationBar with Provider = controller
class TabBottomNavigatorController extends ChangeNotifier {
  int _currentIndex = 0;
  int get currentIndex => _currentIndex;

  set currentIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }
}
