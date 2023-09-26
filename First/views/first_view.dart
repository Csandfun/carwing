// ignore_for_file: unused_import, prefer_const_constructors

import 'package:carwing_project/app/modules/Login/views/login_view.dart';
import 'package:carwing_project/app/modules/NavbarRoutes/views/navbar_routes_view.dart';
import 'package:carwing_project/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/first_controller.dart';

class FirstView extends GetView<FirstController> {
  const FirstView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Material(
     child: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      padding: EdgeInsets.all(15),
      child: Column(
        children: [
          SizedBox(height: 20,),
          Align(alignment:Alignment.centerRight,
          child: TextButton(
            onPressed: () { 
              Get.toNamed(Routes.NAVIGATOR);
              //  Navigator.push(context, MaterialPageRoute(builder: (context)=>DashB(),
              //  ));
             },
             child: Text("SKIP",style: TextStyle(color: Colors.blue[900],
             fontSize: 20.0,),
             ),
          ),
          ),
          SizedBox(height: 20,),
          Padding(padding: const EdgeInsets.all(16),
          child:Image.asset("assets/up.jpg",),
          ),
        SizedBox(height: 20,),
        Text("Doctors Appointment",style: TextStyle(color: Colors.blue[900],fontSize: 30,wordSpacing: 2,
        letterSpacing: 1,fontWeight: FontWeight.bold),),
        SizedBox(height: 10,),
        Text("Appoint your Doctor",style: TextStyle(color: Colors.black87,fontSize: 15,
        fontWeight: FontWeight.bold),),
        SizedBox(height: 50,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Material(
              color: Colors.green,
              borderRadius: BorderRadius.circular(10),
              child: InkWell(
                onTap: () {
                 Navigator.push(context,MaterialPageRoute(builder:(context)=>LoginView()));
                },
                child: Padding(padding:EdgeInsets.symmetric(vertical:15,horizontal: 40),
                child: Text("Login",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 22),),
                ),
              ), 
            ),
             Material(
              color: Colors.green,
              borderRadius: BorderRadius.circular(10),
              child: InkWell(
                onTap: () {
                //  Navigator.push(context,MaterialPageRoute(builder:(context)=>LoginView()));
                Get.toNamed(Routes.SIGNUP);
                },
                child: Padding(padding:EdgeInsets.symmetric(vertical:15,horizontal: 40),
                child: Text("SignUp",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 22),),
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
