import 'package:app/view/componant/componant.dart';
import 'package:app/view/pdfPart.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:native_pdf_view/native_pdf_view.dart';
import 'package:open_file_safe/open_file_safe.dart';
import 'package:url_launcher/url_launcher.dart';

class Second extends StatelessWidget {
  const Second({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body:  SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 15,),
            grayButton("مطلب التجذيف",onTap: (){
              Get.to(PdfPart("1.pdf"));
            }),
            SizedBox(height: 3,),
            grayButton("مطلب الملاحة البحرية",onTap: (){
              Get.to(PdfPart("2.pdf"));
            }),
            SizedBox(height: 3,),
            grayButton("مطلب الفنون البحرية",onTap: (){
              Get.to(PdfPart("3.pdf"));
            }),
            SizedBox(height: 3,),
            grayButton("مطلب الصافرات البحرية",onTap: (){
              Get.to(PdfPart("4.pdf"));
            }),
            SizedBox(height: 3,),
            grayButton("مطلب المخابرة البحرية",onTap: (){
              Get.to(PdfPart("5.pdf"));
            }),
            SizedBox(height: 3,),
            grayButton("مطلب السباحة",onTap: (){
              Get.to(PdfPart("6.pdf"));
            }),
            SizedBox(height: 3,),
            grayButton("مطلب معرفة مظاهر الطقس",onTap: (){
              Get.to(PdfPart("7.pdf"));
            }),
            SizedBox(height: 3,),
            grayButton("مطلب أنواع السفن",onTap: (){
              Get.to(PdfPart("8.pdf"));
            })

          ],
        ),
      ),
    );
  }
}
