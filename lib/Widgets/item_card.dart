import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String qty;
  final String price;
  final String? actualPrice;
  const ItemCard(
      {super.key,
      required this.imageUrl,
      required this.name,
      required this.qty,
      required this.price,
      this.actualPrice});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            padding: const EdgeInsets.all(4),
            height: 75,
            width: 75,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.grey)),
            child: Image.network(imageUrl),
          ),
          const SizedBox(
            width: 14,
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 75,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        name,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Text(
                        "${qty}kg",
                        style: TextStyle(color: Colors.black.withOpacity(0.7)),
                      ),
                      Row(
                        children: [
                          Text(
                            "₹$price",
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Visibility(
                            visible: (actualPrice == null) ? false : true,
                            child: Text(
                              "₹$actualPrice",
                              style: TextStyle(
                                  color: Colors.black.withOpacity(0.7),
                                  decoration: TextDecoration.lineThrough),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 35,
                    width: 105,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(12)),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.remove,
                              color: Colors.white,
                              size: 12,
                            )),
                        Text(
                          qty,
                          style: const TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 12,
                            ))
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
