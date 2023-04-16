import 'package:flutter/material.dart';
import 'package:testing/Widgets/item_card.dart';

class CartCard extends StatelessWidget {
  const CartCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12)),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                    color: const Color.fromARGB(150, 200, 200, 200),
                    borderRadius: BorderRadius.circular(8)),
                child: const Icon(
                  Icons.timer,
                  size: 32,
                ),
              ),
              const SizedBox(
                width: 12,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Delivery in 20 minutes",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text("2 items")
                ],
              )
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          const ItemCard(
            imageUrl:
                "https://imgs.search.brave.com/0IfvVwL9g6HC2ZmX9cAebudz_jxq0fu3NGcmGcET9GE/rs:fit:1080:1080:1/g:ce/aHR0cHM6Ly9hZGFt/c2FwcGxlbGxjLmNv/bS93cC1jb250ZW50/L3VwbG9hZHMvMjAy/MC8wMS9DdXQtT25p/b24ucG5n",
            name: "Onion",
            price: "21",
            qty: "1",
            actualPrice: "30",
          ),
          const ItemCard(
            imageUrl:
                "https://imgs.search.brave.com/0IfvVwL9g6HC2ZmX9cAebudz_jxq0fu3NGcmGcET9GE/rs:fit:1080:1080:1/g:ce/aHR0cHM6Ly9hZGFt/c2FwcGxlbGxjLmNv/bS93cC1jb250ZW50/L3VwbG9hZHMvMjAy/MC8wMS9DdXQtT25p/b24ucG5n",
            name: "Onion",
            price: "21",
            qty: "1",
            actualPrice: "30",
          ),
          const ItemCard(
            imageUrl:
                "https://imgs.search.brave.com/0IfvVwL9g6HC2ZmX9cAebudz_jxq0fu3NGcmGcET9GE/rs:fit:1080:1080:1/g:ce/aHR0cHM6Ly9hZGFt/c2FwcGxlbGxjLmNv/bS93cC1jb250ZW50/L3VwbG9hZHMvMjAy/MC8wMS9DdXQtT25p/b24ucG5n",
            name: "Onion",
            price: "21",
            qty: "1",
            actualPrice: "30",
          ),
        ],
      ),
    );
  }
}
