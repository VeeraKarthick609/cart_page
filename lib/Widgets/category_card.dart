import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final String imageUrl;
  final String name;
  const CategoryCard({super.key, required this.imageUrl, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      //decoration: BoxDecoration(border: Border.all()),
//      margin: EdgeInsets.symmetric(vertical: 10),
      //width: 80,
      child: Expanded(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  borderRadius: BorderRadius.circular(12)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.network(
                    imageUrl,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              name,
              maxLines: 2,
              textAlign: TextAlign.center,
              style: const TextStyle(fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
