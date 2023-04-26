// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String imageUrl;
  final bool isOffer;
  final String? offer;
  final String name;
  final String qty;
  final String old_price;

  final String new_price;
  const ProductCard(
      {super.key,
      required this.imageUrl,
      required this.isOffer,
      this.offer,
      required this.name,
      required this.qty,
      required this.new_price,
      required this.old_price});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 6),
      height: MediaQuery.of(context).size.height / 4,
      width: MediaQuery.of(context).size.width / 3.5,
      //decoration: BoxDecoration(border: Border.all()),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Colors.grey)),
                      child: Image.network(imageUrl),
                    ),
                    Positioned(
                        left: 8,
                        child: Visibility(
                            visible: isOffer,
                            child: Container(
                              height: 26,
                              width: 18,
                              decoration:
                                  const BoxDecoration(color: Colors.blue),
                              child: Center(
                                child: Text(
                                  offer ?? "",
                                  style: const TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ),
                            )))
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6),
                  child: Container(
                      padding: const EdgeInsets.all(3),
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 227, 227, 227),
                          borderRadius: BorderRadius.circular(6)),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.timer,
                            size: 16,
                            color: Colors.black.withOpacity(0.6),
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          const Text(
                            "8 MINS",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      )),
                ),
                Text(
                  name,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(qty),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // mainAxisSize: MainAxisSize.min,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          new_price,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          old_price,
                          style: const TextStyle(
                              color: Colors.grey,
                              decoration: TextDecoration.lineThrough),
                        )
                      ],
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 30,
                        width: 70,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.green),
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.green.withOpacity(0.05),
                        ),
                        child: const Center(
                            child: Text(
                          "ADD",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.green),
                        )),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
