import 'package:flutter/material.dart';
import 'package:testing/Widgets/product_card.dart';

class BestSeller extends StatelessWidget {
  const BestSeller({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        itemBuilder: (context, index) {
          return SizedBox(
            height: MediaQuery.of(context).size.height / 4,
            child: const ProductCard(
              imageUrl:
                  "https://imgs.search.brave.com/nilQEWnxdK5A-H3SQ7KzsM-SDEPQ7T9tdGUQk1CRLRU/rs:fit:509:513:1/g:ce/aHR0cDovL3Byb2R1/Y2VkZXBvdC5jYS93/cC1jb250ZW50L3Vw/bG9hZHMvMjAxNC8w/NS9wcm9kdWNlLWxh/cmdlLW9uaW9uMS5q/cGc",
              isOffer: true,
              offer: "15",
              name: "Onion",
              qty: "1 kg",
              old_price: "₹26",
              new_price: "₹22",
            ),
          );
        });
  }
}
