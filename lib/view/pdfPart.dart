import 'package:app/view/componant/componant.dart';
import 'package:flutter/material.dart';
import 'package:native_pdf_view/native_pdf_view.dart';
import 'package:open_file_safe/open_file_safe.dart';
import 'package:url_launcher/url_launcher.dart';

class PdfPart extends StatelessWidget {
  String name;
  PdfPart(this.name,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pdfController = PdfController(
      document: PdfDocument.openAsset('assets/pdf/'+name),
    );
    return Scaffold(
      backgroundColor: Colors.black,
      body:Center(
          child: PdfView(
            controller: pdfController,
          )
      ),
    );
  }
}
