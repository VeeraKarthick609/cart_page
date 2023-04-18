import 'package:flutter/material.dart';
import 'package:testing/Widgets/plans_widget.dart';

class WidgetsScreen extends StatelessWidget {
  const WidgetsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> list = [
      "Acupunture classes",
      "Acupunture 3D App",
      "Weekly income plan",
      "Business website",
      "Logo Branding",
      "MSME Registration",
      "Business Card",
      "B2B/B2C Bussiness App",
      "Letterhead",
      "Free Business Ads"
    ];
    return Scaffold(
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.all(12),
            child: PlanWidget(
              services: list,
              name: "Business Plan",
              cost: "12500.0",
            )),
      ),
    );
  }
}
