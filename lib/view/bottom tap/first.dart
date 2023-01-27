import 'package:app/view/componant/componant.dart';
import 'package:app/view/wesam.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../pdfPart.dart';

class First extends StatelessWidget {
  const First({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      myCard(image: "assets/images/003.png", text: "الكشافة الليبية",
                          onTap: (){

                          },
                          context: context,
                          cover: "001.jpg"
                      ),
                      SizedBox(width: 20,),
                      myCard(image: "assets/images/004.png", text: "الكشافة البحرية",
                          onTap: (){

                          },
                          context: context,
                          cover: "002.jpg"
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      myCard(image: "assets/images/wesam.png", text: "الاوسمة الكشفية",
                          onTap: (){
                        Get.to(Wesam());
                          },
                          context: context,
                          cover: "011.jpg"
                      ),
                      SizedBox(width: 20,),
                      myCard(image: "assets/images/camera.png", text: "البوم الكشافة البحرية",
                          onTap: (){

                          },
                          context: context,
                          cover: "010.jpg"
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      myCard(image: "assets/images/calender.png", text: "تقويم البرنامج",
                          onTap: (){

                          },
                          context: context,
                          cover: "012.jpg"
                      ),
                      SizedBox(width: 20,),
                      myCard(image: "assets/images/book.png", text: "المكتبة",
                          onTap: (){

                          },
                          context: context,
                          cover: "009.jpg"
                      ),
                    ],
                  ),
                ],
              )
              ,),
          )
        ],
      ),

    );
  }
}
