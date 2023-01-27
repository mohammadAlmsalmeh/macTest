import 'package:app/model/appVar.dart';
import 'package:app/view/pdfPart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'componant/componant.dart';

class Wesam extends StatelessWidget {
  const Wesam({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        title: Column(children: [
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Column(
                children: [
                  Text("الكشافة البحرية الليبية"),
                  Text("Libyan sea scouts")
                ],
              ),
              Image.asset("assets/images/logo.png",height: 50,),
              Image.asset("assets/images/main.png",height: 50,),
            ],
          ),
          SizedBox(height: 20,)
        ],),
        centerTitle: true,
        backgroundColor: Colors.black,
        elevation: 0,
        automaticallyImplyLeading: false,
      ),
      backgroundColor: Colors.black,
      body:  SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 15,),
            grayButton("مقدمة",onTap: (){
              Get.to(PdfPart("w1.pdf"));
            }),
            SizedBox(height: 3,),
            grayButton("الاوسمة البيئية والزراعية",onTap: (){
              Get.to(PdfPart("w2.pdf"));
            }),
            SizedBox(height: 3,),
            grayButton("الاوسمة الثقافية",onTap: (){
              Get.to(PdfPart("w3.pdf"));
            }),
            SizedBox(height: 3,),
            grayButton("الاوسمة الرياضية",onTap: (){
              Get.to(PdfPart("w4.pdf"));
            }),
            SizedBox(height: 3,),
            grayButton("الأوسمة العلمية",onTap: (){
              Get.to(PdfPart("w5.pdf"));
            }),
            SizedBox(height: 3,),
            grayButton("الاوسمة المهنية",onTap: (){
              Get.to(PdfPart("w6.pdf"));
            }),
            SizedBox(height: 3,),
            grayButton("أوسمة الخدمة العامة",onTap: (){
              Get.to(PdfPart("w7.pdf"));
            }),
            SizedBox(height: 3,),
            grayButton("أوسمة الفنون الجميلة",onTap: (){
              Get.to(PdfPart("w8.pdf"));
            }),
            SizedBox(height: 3,),
            grayButton("أوسمة حياة الخلاء",onTap: (){
              Get.to(PdfPart("w9.pdf"));
            })

          ],
        ),
      ),
    );
  }
}
