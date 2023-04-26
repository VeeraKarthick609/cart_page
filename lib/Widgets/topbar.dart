import 'package:flutter/material.dart';

class Topbar extends StatelessWidget {
  const Topbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "DELIVERY IN",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
            ),
            const SizedBox(
              height: 4,
            ),
            const Text(
              "8 minutes",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              "ITI Layout, Muneshwara Nagar, Hospalaya",
              style: TextStyle(color: Colors.black.withOpacity(0.7)),
            )
          ],
        ),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.person,
              size: 32,
            ))
      ],
    );
  }
}
