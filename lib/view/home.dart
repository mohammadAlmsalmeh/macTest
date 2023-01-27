import 'package:app/controller/homeControll.dart';
import 'package:app/model/modelClass.dart';
import 'package:app/view/componant/componant.dart';
import 'package:app/view/pdfPart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
        builder: (controller){
          return Scaffold(
            backgroundColor: Colors.black,
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
            body:Center(
              child: controller.pages[controller.selectedIndex],
            ) ,
            bottomNavigationBar: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                SizedBox(height: 100,),
                CurvedNavigationBar(
                  backgroundColor: Colors.black,
                  buttonBackgroundColor: Colors.black,
                  color: Color.fromRGBO(0, 45, 64, 1),
                  onTap: (index){
                    controller.changePage(index);
                  },
                  items: [
                    Icon(Icons.home_filled,size: 20,color: Colors.white,),
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/images/005.png"),
                      child: Image.asset("assets/images/005.png"),
                      radius: 25,
                    ),
                    CircleAvatar(
                      child: Image.asset("assets/images/006.png"),
                      radius: 25,
                    ),
                    CircleAvatar(
                      child: Image.asset("assets/images/007.png"),
                      radius: 25,
                    ),
                  ],
                ),
              ],
            )
          );
        }
    );
  }
}

/* BottomNavigationBar(
                backgroundColor: Colors.black,
                currentIndex: 0,
                onTap: (index){
                  controller.changePage(index);
                },
                items: [
                  BottomNavigationBarItem(
                      icon: Container(
                          padding: EdgeInsets.only(top: 15),
                          child: Icon(Icons.home_filled,size: 20,)),
                      label:'البداية'
                  ),
                  BottomNavigationBarItem(
                      icon: Container(
                        margin: EdgeInsets.zero,
                        child: CircleAvatar(
                          backgroundImage: AssetImage("assets/images/005.png"),
                          child: Image.asset("assets/images/005.png"),
                          radius: 35,
                        ),
                      ),
                      label: ""
                  ),
                  BottomNavigationBarItem(
                      icon: Container(
                        child: CircleAvatar(
                          child: Image.asset("assets/images/006.png"),
                          radius: 35,
                        ),
                      ),
                      label: ""
                  ),
                  BottomNavigationBarItem(
                      icon: Container(
                        child: CircleAvatar(
                          child: Image.asset("assets/images/007.png"),
                          radius: 35,
                        ),
                      ),
                      label: ""
                  ),
                ],
              ), */