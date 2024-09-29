import 'package:bakerstreet_assignment/common_widgets.dart/common_container.dart';
import 'package:bakerstreet_assignment/common_widgets.dart/previous_reports_container.dart';
import 'package:flutter/material.dart';

class ReportCenter extends StatefulWidget {
  const ReportCenter({super.key});

  @override
  State<StatefulWidget> createState() => _ReportCenter();
}

class _ReportCenter extends State<ReportCenter> {
  @override
  Widget build(BuildContext context) {
    const Color kwhite = Colors.white;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        leading: const Icon(Icons.arrow_back_ios, color: kwhite),
        title: const Text(
          'Reports Centre',
          style: TextStyle(
            color: kwhite,
            fontSize: 18,
          ),
        ),
        backgroundColor: Colors.black,
      ),
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.5,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/purple_high.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  padding: EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Which report do you want to generate today?',
                        style: TextStyle(color: kTextColor),
                      ),
                      const SizedBox(height: 15),
                      const CommonContainer(
                        title: 'Portfolio Summary',
                        description:
                            'Overview of your current investment holdings and their performance.',
                      ),
                      const SizedBox(height: 16),
                      const CommonContainer(
                        title: "Capital Gains",
                        description:
                            'Summary of gains/losses generated from your investments for filing your ITR.',
                      ),
                      const SizedBox(height: 16),
                      const CommonContainer(
                        title: 'Cash Flow',
                        description:
                            'View Cash inflows & outflows to your folio from your registered bank account.',
                      ),
                      const SizedBox(height: 16),
                      const CommonContainer(
                        title: 'Transaction Statement',
                        description:
                            'Record of all investment transactions for each holding in your portfolio.',
                      ),
                      const SizedBox(height: 16),
                      const CommonContainer(
                        title: 'Statements of Accounts',
                        description:
                            "Comprehensive report on a fund's key information & performance.",
                      ),
                      const SizedBox(height: 16),
                      const Divider(color: Colors.grey),
                      const SizedBox(height: 15),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Previously Generated Reports',
                            style: TextStyle(
                                color: Color.fromARGB(255, 177, 174, 174),
                                fontSize: 15),
                          ),
                          TextButton(
                            onPressed: null,
                            child: Text(
                              'View all',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 34, 11, 207),
                                  fontSize: 14),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 200,
                        child: ListView.builder(
                          itemCount: 5,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, int index) {
                            return const Row(
                              children: [
                                PreviousReportContainer(
                                  title: 'Transaction Statement',
                                ),
                                SizedBox(width: 15),
                              ],
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        'assets/images/yellow_low.png'), // Your image path
                    fit: BoxFit.cover, // Cover the entire screen
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
