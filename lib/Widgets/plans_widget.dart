import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class PlanWidget extends StatelessWidget {
  List services;
  String name;
  String cost;
  PlanWidget(
      {super.key,
      required this.services,
      required this.cost,
      required this.name});

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      color: Colors.grey,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Rs",
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 14),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          Text(
                            cost,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          const Text(
                            "/mo",
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.all(4.0),
                child: Icon(
                  Icons.book,
                  size: 48,
                  color: Colors.green,
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: services.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.check_circle_outline_rounded,
                            size: 16,
                            color: Colors.green,
                          ),
                          const SizedBox(
                            width: 6,
                          ),
                          Text(services[index].toString()),
                        ],
                      ),
                    );
                  }),
              const SizedBox(
                height: 12,
              ),
              Center(
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 12),
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(16)),
                    child: const Text("Enquire  Now"),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
