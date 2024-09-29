import 'package:bakerstreet_assignment/common_widgets.dart/previous_reports_container.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PdfViewScreen extends StatefulWidget {
  const PdfViewScreen({super.key});

  @override
  State<PdfViewScreen> createState() => _PdfViewScreenState();
}

PdfViewerController? controller;

class _PdfViewScreenState extends State<PdfViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'PDF Viewer',
          style: TextStyle(color: kTextColor),
        ),
        backgroundColor: Colors.black,
      ),
      body: SfPdfViewer.network(
        'https://pdfobject.com/pdf/sample.pdf',
      ),
    );
  }
}
