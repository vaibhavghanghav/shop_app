import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  //list of items on sale
  final List _shopItems = [
    //[ itemName, itemPrice, imagePath, color ]
    ["Avacado", "171.00", "assets/avacado.png", Colors.green],
    ["Banana", "50.00", "assets/banana.png", Colors.yellow],
    ["Chicken", "300.00", "assets/chicken.png", Colors.brown],
    ["Mango", "100.00", "assets/mango.png", Colors.orange],
    ["Water Bottle", "20.00", "assets/water.png", Colors.blue],
  ];

  //list of items in cart
  List _cartItems = [];

  get shopItems => _shopItems;
  get cartItems => _cartItems;

  //add item to cart
  void addItemToCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  //remove item from cart
  void removeItemFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  // calculate total price of items in cart
  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < _cartItems.length; i++) {
      totalPrice += double.parse(_cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}
