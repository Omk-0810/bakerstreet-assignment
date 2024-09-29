import 'package:flutter/material.dart';

const Color kTextColor = Colors.white; // Define your text color here

class PreviousReportContainer extends StatelessWidget {
  final String title;

  const PreviousReportContainer({
    super.key,
    this.title = 'Transaction Statement',
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(87, 18, 17, 17),
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.all(12),
      height: 170,
      width: 120,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                'assets/icons/Plate.png',
                height: 20,
                width: 20,
              ),
              Image.asset(
                'assets/images/download.png',
                height: 20,
                width: 20,
              ),
            ],
          ),
          const SizedBox(height: 16),
          Text(
            title,
            style: const TextStyle(color: kTextColor),
          ),
          const SizedBox(height: 12),
        ],
      ),
    );
  }
}
