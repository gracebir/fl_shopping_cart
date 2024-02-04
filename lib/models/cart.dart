import 'package:flutter/material.dart';

import 'shoe_model.dart';

class Cart extends ChangeNotifier {
  // list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
        name: "Zoom FREAK",
        price: "336",
        imagePath: "lib/images/sport.jpg",
        description:
            "The forward-thinking design of this latest signature shoe."),
    Shoe(
        name: "Air sport",
        price: "336",
        imagePath: "lib/images/sport-shoes.jpg",
        description:
            "Female legs in stylish black jeans in white leather sneakers."),
    Shoe(
        name: "Air max",
        price: "125",
        imagePath: "lib/images/airmax.jpg",
        description: "Creative minimal paper idea. Concept white shoe."),
    Shoe(
        name: "All star",
        price: "100.0",
        imagePath: "lib/images/all_star.jpg",
        description: "Sport shoes isolated on white, with clipping path."),
  ];
  // list of items in the cart

  List<Shoe> userCart = [];

  // get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  // add item to cart

  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove item from the cart

  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
