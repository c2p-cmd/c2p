import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pdfx/pdfx.dart';

class PDFPage extends StatelessWidget {
  const PDFPage({super.key});

  @override
  Widget build(BuildContext context) {
    final document = PdfDocument.openAsset(
      "assets/pdf/SharanThakur EU-CV.pdf",
    );
    final controller = PdfControllerPinch(
      document: document,
    );

    return Scaffold(
      appBar: const CupertinoNavigationBar(
        middle: Text("Sharan Thakur Resume"),
      ),
      body: PdfViewPinch(
        controller: controller,
        onDocumentError: (error) {
          print(error);
        },
      ),
    );
  }
}
