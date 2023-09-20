// ignore_for_file: prefer_const_constructors

import 'package:carwing_project/app/modules/Login/views/login_view.dart';
import 'package:carwing_project/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    
    return Material(
     child: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      padding: EdgeInsets.all(15),
      child: Column(
        children: [
          SizedBox(height: 5,),
          Align(alignment:Alignment.centerRight,
          child: TextButton(
            onPressed: () { 
               Get.toNamed(Routes.NAVBAR_ROUTES);
             },
             child: Text("SKIP",style: TextStyle(color: Colors.purple,
             fontSize: 20.0,),
             ),
          ),
          ),
          SizedBox(height: 20,),
          Padding(padding: EdgeInsets.all(16),
          child:Image.asset("assets/up.jpg",),
          ),
        SizedBox(height: 20,),
        Text("Doctors Appointment",style: TextStyle(color: Colors.purple,fontSize: 30,wordSpacing: 2,
        letterSpacing: 1,fontWeight: FontWeight.bold),),
        SizedBox(height: 10,),
        Text("Appoint your Doctor",style: TextStyle(color: Colors.black87,fontSize: 15,
        fontWeight: FontWeight.bold),),
        SizedBox(height: 50,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Material(
              color: Colors.purple,
              borderRadius: BorderRadius.circular(10),
              child: InkWell(
                onTap: () {
                 Navigator.push(context,MaterialPageRoute(builder:(context)=>LoginView()));
                },
                child: Padding(padding:EdgeInsets.symmetric(vertical:15,horizontal: 40),
                child: Text("Login",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 22),),
                ),
              ), 
            ),
             Material(
              color: Colors.purple,
              borderRadius: BorderRadius.circular(10),
              child: InkWell(
                onTap: () {
                //  Navigator.push(context,MaterialPageRoute(builder:(context)=>LoginView()));
                Get.toNamed(Routes.SIGNUP);
                },
                child: Padding(padding:EdgeInsets.symmetric(vertical:15,horizontal: 40),
                child: Text("SignUp",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 22),),
                ),
              ),
            ),
          ],
        )
        
        ],
      ),
     ),
    );
  }
}
