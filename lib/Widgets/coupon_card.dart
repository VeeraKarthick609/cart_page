import 'package:flutter/material.dart';

class CouponCard extends StatelessWidget {
  const CouponCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(8)),
      padding: const EdgeInsets.all(8),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Row(
          children: const [
            Icon(
              Icons.local_offer_rounded,
              color: Colors.blue,
            ),
            SizedBox(
              width: 16,
            ),
            Text(
              "Use Coupons",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            )
          ],
        ),
        IconButton(
            onPressed: () {}, icon: const Icon(Icons.arrow_forward_ios_rounded))
      ]),
    );
  }
}
