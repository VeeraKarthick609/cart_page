import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  String text;
  SearchBar({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 234, 234, 236),
          borderRadius: BorderRadius.circular(12)),
      //margin: const EdgeInsets.symmetric(horizontal: 8),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6),
        child: Center(
          child: TextField(
            decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                border: InputBorder.none,
                hintText: text,
                hintStyle:
                    const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                suffixIcon: const Icon(Icons.mic)),
          ),
        ),
      ),
    );
  }
}
