import 'package:flutter/material.dart';
import 'package:testing/Widgets/cart_items.dart';

import '../Widgets/bill_card.dart';
import '../Widgets/cancel_card.dart';
import '../Widgets/coupon_card.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
      bottomSheet: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(8),
          height: h / 12,
          child: MaterialButton(
            elevation: 2,
            onPressed: () {},
            color: Colors.green,
            child: const Text(
              "Place order",
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          )),
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const CartCard(),
              const SizedBox(
                height: 8,
              ),
              const CouponCard(),
              const SizedBox(
                height: 8,
              ),
              const Bill(),
              const SizedBox(
                height: 8,
              ),

              /* const GiftCard(),
              const SizedBox(
                height: 8,
              ), */
              const CancelCard(),
              SizedBox(
                height: h / 12,
              )
            ],
          ),
        ),
      ),
    );
  }
}
