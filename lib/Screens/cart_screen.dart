import 'package:flutter/material.dart';
import 'package:testing/Widgets/cart_items.dart';

import '../Widgets/bill_card.dart';
import '../Widgets/cancel_card.dart';
import '../Widgets/coupon_card.dart';
import '../Widgets/gift_card.dart';
import '../Widgets/tip_card.dart';

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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: const [
              CartCard(),
              SizedBox(
                height: 8,
              ),
              CouponCard(),
              SizedBox(
                height: 8,
              ),
              Bill(),
              SizedBox(
                height: 8,
              ),
              TipCard(),
              SizedBox(
                height: 8,
              ),
              GiftCard(),
              SizedBox(
                height: 8,
              ),
              CancelCard(),
            ],
          ),
        ),
      ),
    );
  }
}
