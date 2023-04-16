import 'package:flutter/material.dart';

class GiftCard extends StatelessWidget {
  const GiftCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: const [
              Text(
                "Order for someone else",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Text(
                "Add",
                style: TextStyle(fontSize: 16, color: Colors.green),
              )
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width / 1.5,
            child: Text(
              maxLines: 2,
              "Add a message to be sent as an SMS with your gift",
              style: TextStyle(
                fontSize: 14,
                color: Colors.black.withOpacity(0.5),
              ),
            ),
          )
        ],
      ),
    );
  }
}
