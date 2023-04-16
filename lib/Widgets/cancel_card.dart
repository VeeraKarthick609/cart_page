import 'package:flutter/material.dart';

class CancelCard extends StatelessWidget {
  const CancelCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Cancellation Policy",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            "Orders cannot be cancelled once paked for delivery. In case of unexpected delays, a refund will be provided, if applicable",
            style: TextStyle(
              fontSize: 15,
              color: Colors.black.withOpacity(0.5),
            ),
          )
        ],
      ),
    );
  }
}
