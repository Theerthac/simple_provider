import 'package:flutter/material.dart';

class ListProvider extends ChangeNotifier {
  List<int> numbers = [1, 2, 3];

  void add() {
    int last = numbers.last;
    numbers.add(last + 1);
    notifyListeners();
  }
}
