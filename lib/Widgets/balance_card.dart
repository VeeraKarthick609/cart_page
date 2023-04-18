import 'package:flutter/material.dart';

class BalanceCard extends StatelessWidget {
  Color color;

  BalanceCard({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(12)),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 4,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Balance",
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.w400),
          ),
          const SizedBox(
            height: 6,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                "Rs.120",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 16,
              ),
              Text(
                "Available",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              )
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Center(
            child: GestureDetector(
              onTap: () {},
              child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(18)),
                  child: const Text(
                    "Withdraw",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  )),
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          const Center(
            child: Text(
              textAlign: TextAlign.center,
              maxLines: 2,
              "You have to verify your personal and address Inforamtion to withdraw your earnings",
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
