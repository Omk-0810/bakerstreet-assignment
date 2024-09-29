import 'package:bakerstreet_assignment/common_widgets.dart/previous_reports_container.dart';
import 'package:flutter/material.dart';

class ReportDetailsContainer extends StatelessWidget {
  final String reportType;

  const ReportDetailsContainer({
    super.key,
    required this.reportType,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44,
      width: MediaQuery.of(context).size.width * 0.90,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blue, width: 2),
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.all(8),
      child: Text(
        reportType,
        style: const TextStyle(color: kTextColor),
      ),
    );
  }
}
