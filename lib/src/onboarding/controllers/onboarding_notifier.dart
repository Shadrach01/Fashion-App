import 'package:flutter/material.dart';

class OnboardingNotifier with ChangeNotifier {
  int _selectedpage = 0;

  int get selectedPage => _selectedpage;

  set setSelectedPage(int page) {
    _selectedpage = page;
    notifyListeners();
  }
}
