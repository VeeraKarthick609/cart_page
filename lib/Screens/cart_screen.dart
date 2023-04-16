import 'package:flutter/material.dart';
import 'package:testing/Widgets/cart_items.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(234, 255, 255, 255),
      appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(
            "Checkout",
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {},
          )),
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Scrollbar(child: CartCard()),
      ),
    );
  }
}
