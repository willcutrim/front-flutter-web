import 'package:flutter/material.dart';

class CountRepository extends ChangeNotifier {
  int _count = 0;

  int get count => _count;

  void increment() {
    _count++;
    notifyListeners();
  }

  void decrement() {
    if (_count == 0) return;
    _count--;
    notifyListeners();
  }

  void reset() {
    _count = 0;
    notifyListeners();
  }

  void tamanhoDaTela(double altura, double largura) {
    _count = (altura * largura).toInt();
    notifyListeners();
  }
}
