import 'package:flutter/material.dart';
import 'package:testing/Widgets/best_seller.dart';
import 'package:testing/Widgets/category.dart';
import 'package:testing/Widgets/category_card.dart';
import 'package:testing/Widgets/search_bar.dart';
import 'package:testing/Widgets/topbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Topbar(),
                const SizedBox(
                  height: 16,
                ),
                SearchBar(text: "Search 'ice'"),
                const SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: const [
                    Text(
                      "Bestsellers",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Text(
                      "see all",
                      style: TextStyle(
                          color: Colors.green, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                SizedBox(
                    height: MediaQuery.of(context).size.height / 3,
                    child: const BestSeller()),
                const Text(
                  "Shop by category",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                const SizedBox(
                  height: 16,
                ),
                Expanded(child: Category()),
              ],
            )),
      ),
    );
  }
}
