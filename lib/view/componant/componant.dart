import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget inputText({required String hint,required TextEditingController controller,
  required Function onChange , TextInputType keyType = TextInputType.text,bool hidePassword = false,
  required BuildContext context
}){
  return Container(
    width: MediaQuery.of(context).size.width/1.2,
    height: 50,
    child: TextFormField(
      textDirection: TextDirection.rtl,
      obscureText: hidePassword,
      controller: controller,
      onChanged: (value){
        //on change fun
        onChange();
      },
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide( color:Colors.black),
          borderRadius: BorderRadius.circular(20),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide( color:Colors.black),
          borderRadius: BorderRadius.circular(20),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide( color:Colors.black),
          borderRadius: BorderRadius.circular(20),
        ),
        hintText: hint,
        hintTextDirection: TextDirection.rtl
      ),
    ),
  );
}

class ValidateInput extends StatelessWidget {
  bool isValid;
  String hint;
  String validStmt;
  TextEditingController controller;
  bool hidePassword;
  void Function(String) onChange;
  TextInputType textType ;
  ValidateInput(this.hint,this.controller,this.isValid,this.onChange,{Key? key, this.textType= TextInputType.text,this.validStmt="",this.hidePassword=false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: Get.width/1.15,
          height: 50,
          child: TextFormField(
            textDirection: TextDirection.rtl,
            keyboardType:textType ,
            controller: controller,
            onChanged: onChange,
            obscureText: hidePassword,
            decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide( color:Colors.black),
                  borderRadius: BorderRadius.circular(20),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide( color:Colors.black),
                  borderRadius: BorderRadius.circular(20),
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide( color:Colors.black),
                  borderRadius: BorderRadius.circular(20),
                ),
                hintText: hint,
              hintTextDirection: TextDirection.rtl
            ),
          ),
        ),
        isValid?Text(""):Text(validStmt,style: TextStyle(color: Colors.red),textDirection: TextDirection.rtl,)
      ],
    );
  }
}

Widget myCard({required String image,required String text,required Function onTap
,required BuildContext context ,required String cover}){
  return Container(
    width: MediaQuery.of(context).size.width/2.5,
    height: MediaQuery.of(context).size.width/2.5,
    //padding: EdgeInsets.fromLTRB(25, 10, 25, 10),
    child: GestureDetector(
      onTap: (){
        onTap();
      },
      child: Card(
        
        elevation: 10,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Stack(
          children: [
            Image.asset("assets/images/"+cover , fit: BoxFit.cover,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(image,height: 100,),
                Center(child: Text(text,style:
                TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold,),textAlign: TextAlign.center,))

              ],
            )
          ],
        ),
      ),
    ),
  );
}

Widget grayButton(String text,{required Function onTap}){
  return MaterialButton(
      onPressed: (){onTap();},
      color: Colors.grey,
      minWidth: Get.width/1.2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(topRight: Radius.circular(25),bottomRight: Radius.circular(25)),
      ),
      child:Text(text,style: TextStyle(fontSize: 16,color: Colors.white),)
  );
}