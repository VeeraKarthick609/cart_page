import 'package:flutter/material.dart';
import 'package:testing/Widgets/category_card.dart';

class Category extends StatelessWidget {
  const Category({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 8,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
      itemBuilder: (context, index) {
        return const CategoryCard(
            imageUrl:
                "https://imgs.search.brave.com/m6prK5Cxfr2Q6LBn-tVP_ZdtUfXY4IE-e_Y0qeD4Tf8/rs:fit:1024:768:1/g:ce/aHR0cHM6Ly92Y2Fy/ZW1lZHNwYS5maWxl/cy53b3JkcHJlc3Mu/Y29tLzIwMTIvMDgv/ZnJlc2gtZnJ1aXQu/anBn",
            name: "Fruits and vegetables");
      },
    );
  }
}
