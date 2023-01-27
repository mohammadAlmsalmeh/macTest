import 'package:app/model/appVar.dart';
import 'package:app/model/modelClass.dart';
import 'package:app/view/bottom%20tap/first.dart';
import 'package:app/view/bottom%20tap/forth.dart';
import 'package:app/view/bottom%20tap/second.dart';
import 'package:app/view/bottom%20tap/third.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  int selectedIndex =0;
  List<Widget> pages = [First(),Second(),Third(),Forth()];
  void changePage(int index){
    selectedIndex = index;
    update();
  }

  Widget adCard(FactoryModel factory,BuildContext context){
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            margin: EdgeInsets.fromLTRB(18, 18, 18, 0),
            elevation: 5,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(color: Colors.black),
                        ),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(25),
                            child:factory.image=="noPhoto.jpg"?
                            Image.asset("assets/images/noPhoto.jpg",fit: BoxFit.fill,):
                            Image.network(AppVar.serverName+"/images/"+factory.image,fit: BoxFit.fill,)
                        ),
                      ),
                      Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(factory.name,style: TextStyle(fontWeight: FontWeight.bold),),
                          SizedBox(height: 15,),

                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 15,)
                ],
              ),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 40,top: 139),
          child: MaterialButton(
              onPressed: (){
                showDialog(context: context,
                    builder: (context){
                      return AlertDialog(
                        title: Text("هل تريد حذف الاعلان",textDirection: TextDirection.rtl,),
                        content: Text(factory.name,textDirection: TextDirection.rtl,),
                        actions: [
                          TextButton(onPressed: (){
                            //delete card
                            Navigator.pop(context);}, child: Text("لا  ")),
                          TextButton(onPressed: () async{
                            /*
                            Navigator.pop(context);
                            bool res = await Creator().deleteAd(adItem.id);
                            if(res){
                              allAd.removeAt(allAd.indexWhere((element) => element.id==adItem.id));
                              update();
                            }
                            else{
                              Fluttertoast.showToast(msg: "لم يتم الحذف");
                            }
                            */
                          }, child: Text("نعم  ")),
                        ],
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                      );
                    });
              },
              color: Colors.orange[800],
              minWidth: Get.width/1.3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusDirectional.circular(10),
              ),
              child:Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("تسجيل الدخول",style: TextStyle(fontSize: 16,color: Colors.white),),
                ],
              )
          ),
        )
      ],
    );
  }
}