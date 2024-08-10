import 'package:flutter/widgets.dart';

class CategoryNotifier with ChangeNotifier {
  String category = '';
  // Set the id of the category
  int _id = 0;
  int get id => _id;

  void setCategory(String c, int id) {
    category = c;
    _id = id;
    notifyListeners();
  }
}
