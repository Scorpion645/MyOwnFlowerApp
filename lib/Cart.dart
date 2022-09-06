import 'package:flowerappallbyme/Data.dart';
import 'package:flutter/material.dart';

class Cart with ChangeNotifier {
  double totalPrice = 0;
  List selectedItems = [];

  Add(Item product) {
    selectedItems.add(product);
    totalPrice += product.itemPrice.round();
    notifyListeners();
  }

  Remove(Item product) {
    selectedItems.remove(product);
    totalPrice -= product.itemPrice.round();
    notifyListeners();
  }
}
