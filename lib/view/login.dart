import 'package:app/controller/loginController.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'componant/componant.dart';
import 'home.dart';


class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GetBuilder<LoginController>(
              init:LoginController(),
              builder: (controller){
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 15,),
                    Text("تسجيل الدخول",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                    SizedBox(height: 16,),
                    inputText(hint: "اسم المستخدم",
                        controller: controller.username,
                        onChange: (){},
                        context: context
                    ),
                    SizedBox(height: 8,),
                    inputText(hint: "كلمة المرور",
                        controller: controller.password,
                        onChange: (){},
                        hidePassword: true,
                        context: context
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 50),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(" تذكرني"),
                          Checkbox(value: controller.acceptTerms , onChanged: (value){
                            controller.changeAccept(value!);
                          }),

                        ],
                      ),
                    ),
                    SizedBox(height: 8,),
                    controller.isloging?CircularProgressIndicator(color: Colors.orange,):
                    MaterialButton(
                        onPressed: (){
                          //controller.login();
                          Get.to(Home());
                        },
                        color: Colors.orange,
                        minWidth: Get.width/1.3,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusDirectional.circular(10),
                        ),
                        child:Text("تسجيل الدخول",style: TextStyle(fontSize: 16,color: Colors.white),)
                    ),
                    Text(controller.message)
                  ],
                );
              }),
        ],
      ),
    );
  }
}
