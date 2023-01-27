import 'package:app/view/componant/componant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../pdfPart.dart';

class Forth extends StatelessWidget {
  const Forth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 15,),
            grayButton("مطلب نظرية الشراع",onTap: (){
              Get.to(PdfPart("1-2.pdf"));
            }),
            SizedBox(height: 3,),
            grayButton("مطلب الملاحة البحرية",onTap: (){
              Get.to(PdfPart("2-2.pdf"));
            }),
            SizedBox(height: 3,),
            grayButton("مطلب المخابرة البحرية",onTap: (){
              Get.to(PdfPart("3-2.pdf"));
            }),
            SizedBox(height: 3,),
            grayButton("مطلب البوصلة البحرية",onTap: (){
              Get.to(PdfPart("4-2.pdf"));
            }),
            SizedBox(height: 3,),
            grayButton("مطلب اطفاء الحرائق",onTap: (){
              Get.to(PdfPart("5-2.pdf"));
            }),
            SizedBox(height: 3,),
            grayButton("مطلب الرصد الجوي وانواع السحب",onTap: (){
              Get.to(PdfPart("6-2.pdf"));
            }),
            SizedBox(height: 3,),
            grayButton("مطلب معرفة الأحياء البحرية",onTap: (){
              Get.to(PdfPart("7-2.pdf"));
            }),
            SizedBox(height: 3,),
            grayButton("مطلب السباحة",onTap: (){
              Get.to(PdfPart("8-2.pdf"));
            }),
            SizedBox(height: 3,),
            grayButton("مطلب الانقاذ من الغرق",onTap: (){
              Get.to(PdfPart("9-2.pdf"));
            }),
          ],
        ),
      ),
    );
  }
}
