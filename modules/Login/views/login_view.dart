// ignore_for_file: prefer_const_constructors

import 'package:carwing_project/app/routes/app_pages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

// ignore: must_be_immutable
class LoginView extends GetView<LoginController> {
  // const LoginView({Key? key}) : super(key: key);
 bool passToggle=true;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: SafeArea(
          child:Column(
            children: [
              // SizedBox(height: 10,),
              Padding(
              padding:EdgeInsets.fromLTRB(20, 0,20, 20),
              child: Image.asset("assets/up.jpg"),
              ),
              SizedBox(height: 10,),
              Padding(padding: EdgeInsets.all(12),
              child: TextField(
                decoration: InputDecoration(
                  prefixIconColor: Colors.green,
                  border: OutlineInputBorder(),
                  label: Text("Enter Username"),
                  prefixIcon: Icon(Icons.person),
                ), 
              ),
              ),
              SizedBox(height: 10,),
              Padding(padding: EdgeInsets.all(12),
              child: TextField(
                obscureText: passToggle ? true : false,
                decoration: InputDecoration(
                // focusedBorder: OutlineInputBorder(borderSide:BorderSide(color: Colors.purple,),
                prefixIconColor: Colors.green,
                suffixIconColor: Colors.green,
                  border: OutlineInputBorder(),
                  label: Text("Enter Password"),
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: InkWell(
                    onTap: () {
                      if(passToggle==true){
                        passToggle=false;
                      }
                      else{
                        passToggle=true;
                      }
                      setState(() {});
                    },
                    child: passToggle ? Icon(CupertinoIcons.eye_slash_fill) : Icon(CupertinoIcons.eye_fill)
                    )
                ), 
              ),
              ),
              SizedBox(height: 12,),
              Material(
              color: Colors.green,
              borderRadius: BorderRadius.circular(10),
              child: InkWell(
                onTap: () {
                //  Navigator.push(context,MaterialPageRoute(builder:(context)=>LoginView()));
               Get.toNamed(Routes.NAVIGATOR);
                },
                child: Padding(padding:EdgeInsets.symmetric(vertical:15,horizontal: 40),
                child: Text("Login",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 22),),
                ),
              ), 
            ),
             SizedBox(height: 12,),
             Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Text("don't have any account?",style: TextStyle(fontSize: 15,color: Colors.black),),
                    SizedBox(width: 10,),
                    TextButton(onPressed: (){
                    Get.toNamed(Routes.SIGNUP);
                    }
                    , child:Text(
                     "Create Account",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.blue)
                    ),
                    )
                  ]
                  ),
            ],
          )
        ),
      ),
    );
  }
}

void setState(Null Function() param0) {
}
