import 'package:fl_shopping_cart/components/cart_item.dart';
import 'package:fl_shopping_cart/models/cart.dart';
import 'package:fl_shopping_cart/models/shoe_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
        builder: (context, value, child) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "My cart",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Expanded(
                        child: ListView.builder(
                            itemCount: value.getUserCart().length,
                            itemBuilder: (context, index) {
                              // get invidual shoes
                              Shoe invidualShoe = value.getUserCart()[index];

                              return CartItem(
                                shoe: invidualShoe,
                              );
                              // return the cart item
                            }))
                  ]),
            ));
  }
}
