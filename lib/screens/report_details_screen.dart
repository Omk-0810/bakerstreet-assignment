import 'package:bakerstreet_assignment/common_widgets.dart/report_details_container.dart';
import 'package:bakerstreet_assignment/screens/pdf_view_screen.dart';
import 'package:bakerstreet_assignment/utils/color_constants.dart';
import 'package:flutter/material.dart';

class ReportDetailsScreen extends StatefulWidget {
  final String reportType;
  const ReportDetailsScreen({super.key, required this.reportType});

  @override
  State<StatefulWidget> createState() => _ReportDetailsScreen();
}

class _ReportDetailsScreen extends State<ReportDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Reports Centre',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
        backgroundColor: Colors.black,
      ),
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/images/blue_high.png'), // Your image path
                fit: BoxFit.cover, // Cover the entire screen
              ),
            ),
          ),
          SingleChildScrollView(
            padding: const EdgeInsets.all(18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Choose a report type and click 'Generate Report' to view detailed information",
                  style: TextStyle(color: kTextColor),
                ),
                const SizedBox(
                  height: 18,
                ),
                ReportDetailsContainer(reportType: widget.reportType),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  "Overview of your current investment holdings and their performance.",
                  style: TextStyle(color: kTextColor),
                ),
                const SizedBox(
                  height: 16,
                ),
                const ReportDetailsContainer(reportType: 'Sharma Family'),
                const SizedBox(
                  height: 18,
                ),
                const ReportDetailsContainer(reportType: 'Since Inception'),
                const SizedBox(
                  height: 18,
                ),
                const Divider(
                  color: Colors.grey,
                ),
                const SizedBox(
                  height: 18,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PdfViewScreen()),
                    );
                  },
                  //wasn't able to take thumbnail of pdf dynamically so took hardcoded image
                  child: Column(
                    children: [
                      Container(
                        decoration: const BoxDecoration(color: Colors.black),
                        padding: const EdgeInsets.fromLTRB(12, 12, 12, 5),
                        height: 200,
                        child: Center(
                            child:
                                Image.asset('assets/images/sample_image.jpg')),
                      ),
                      Container(
                        decoration: const BoxDecoration(color: Colors.black),
                        padding: const EdgeInsets.fromLTRB(12, 12, 12, 5),
                        child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Portfolio summary Sharma Family',
                                style: TextStyle(color: kTextColor),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: kTextColor,
                              )
                            ]),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
