import 'package:bakerstreet_assignment/screens/report_details_screen.dart';
import 'package:bakerstreet_assignment/utils/color_constants.dart';
import 'package:flutter/material.dart';

class CommonContainer extends StatelessWidget {
  final String title;
  final String description;

  const CommonContainer({
    super.key,
    this.title = 'Portfolio Summary',
    this.description =
        'Overview of your current investment holdings and their performance',
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => ReportDetailsScreen(
                    reportType: title,
                  )),
        );
      },
      child: Container(
        height: 85,
        padding: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          color: Color.fromARGB(87, 18, 17, 17),
          border: Border.symmetric(),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(color: kTextColor, fontSize: 16),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              description,
              style: const TextStyle(color: kTextColor, fontSize: 10),
            ),
          ],
        ),
      ),
    );
  }
}
