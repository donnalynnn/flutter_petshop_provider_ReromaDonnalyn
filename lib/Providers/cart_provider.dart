import 'package:flutter/material.dart';
import '/Models/animal.dart';

class CartProvider extends ChangeNotifier {
  final List<Animal> _items = [];

  List<Animal> get items => _items;

  void add(Animal item) {
    _items.add(item);
    notifyListeners();
  }

  void remove(Animal item) {
    _items.remove(item);
    notifyListeners();
  }

  void removeAll() {
    _items.clear();
    notifyListeners();
  }

  double getCartTotal() {
    return _items.fold(0, (previousValue, item) => previousValue + item.price);
  }
}