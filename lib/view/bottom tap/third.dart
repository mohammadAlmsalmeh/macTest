import 'package:app/view/componant/componant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../pdfPart.dart';

class Third extends StatelessWidget {
  const Third({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
           child: Column(
             children: [
               Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   SizedBox(height: 15,),
                   grayButton("مطلب المحركات البحرية",onTap: (){
                     Get.to(PdfPart("1-1.pdf"));
                   }),
                   SizedBox(height: 3,),
                   grayButton("مطلب الملاحة البحرية",onTap: (){
                     Get.to(PdfPart("2-1.pdf"));
                   }),
                   SizedBox(height: 3,),
                   grayButton("مطلب الفنون البحرية",onTap: (){
                     Get.to(PdfPart("3-1.pdf"));
                   }),
                   SizedBox(height: 3,),
                   grayButton("مطلب البوصلة البحرية",onTap: (){
                     Get.to(PdfPart("4-1.pdf"));
                   }),
                   SizedBox(height: 3,),
                   grayButton("مطلب المخابرة البحرية",onTap: (){
                     Get.to(PdfPart("5-1.pdf"));
                   }),
                   SizedBox(height: 3,),
                   grayButton("مطلب سباقات القوارب الشراعية",onTap: (){
                     Get.to(PdfPart("6-1.pdf"));
                   }),
                   SizedBox(height: 3,),
                   grayButton("مطلب معرفة قانون منع التصادم البحري",onTap: (){
                     Get.to(PdfPart("7-1.pdf"));
                   }),
                   SizedBox(height: 3,),
                   grayButton("مطلب الانقاذ من الغرق",onTap: (){
                     Get.to(PdfPart("8-1.pdf"));
                   }),
                   SizedBox(height: 3,),
                   grayButton("مطلب السباحة",onTap: (){
                     Get.to(PdfPart("9-1.pdf"));
                   }),
                   SizedBox(height: 3,),
                   grayButton("مطلب الرحلة البحرية",onTap: (){
                     Get.to(PdfPart("10-1.pdf"));
                   })

                 ],
               ),
             ],
           ),
    ),
      resizeToAvoidBottomInset: true,
    );
  }
}
