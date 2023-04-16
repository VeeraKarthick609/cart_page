import 'package:flutter/material.dart';

class Bill extends StatelessWidget {
  const Bill({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12)),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Text(
          "Bill details",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Item total (incl. taxes)",
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
                    ),
                    Text("₹46",
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 14))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Delivery Charge",
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
                    ),
                    Text("₹4",
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 14))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Feeding India donation",
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                    ),
                    Text("₹1",
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 16))
                  ],
                ),
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              "Grand total",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Text(
              "₹51",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ],
        )
      ]),
    );
  }
}
