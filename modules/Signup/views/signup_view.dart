// ignore_for_file: prefer_const_constructors

// import 'package:carwing_project/app/modules/Login/views/login_view.dart';
import 'package:carwing_project/app/modules/Login/views/login_view.dart';
import 'package:carwing_project/app/routes/app_pages.dart';
import 'package:flutter/cupertino.dart';
// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/signup_controller.dart';

// ignore: must_be_immutable
class SignupView extends GetView<SignupController> {
  // const SignupView({Key? key}) : super(key: key);
   bool passToggle=true;
  @override
  Widget build(BuildContext context) {
    return  Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: SafeArea(
          child:Column(
            children: [
              // SizedBox(height: 10,),
              Padding(
              padding:EdgeInsets.fromLTRB(20, 0,20, 20),
              child: Image.asset("assets/up.jpg",width: 300,),
              ),
              // SizedBox(height: 5,),
              Padding(padding: EdgeInsets.fromLTRB(12,0,12,0),
              child: TextField(
                decoration: InputDecoration(
                  prefixIconColor: Colors.green,
                  border: OutlineInputBorder(),
                  label: Text("Full Name"),
                  prefixIcon: Icon(Icons.person),
                ), 
              ),
              ),
              SizedBox(height: 7,),
              Padding(padding: EdgeInsets.fromLTRB(12,0,12,0),
              child: TextField(
                // obscureText: passToggle ? true : false,
                decoration: InputDecoration(
                // focusedBorder: OutlineInputBorder(borderSide:BorderSide(color: Colors.purple,),
                prefixIconColor: Colors.green,
                suffixIconColor: Colors.green,
                  border: OutlineInputBorder(),
                  label: Text("Email Address"),
                  prefixIcon: Icon(Icons.email),
                  // suffixIcon: InkWell(
                  //   onTap: () {
                  //     if(passToggle==true){
                  //       passToggle=false;
                  //     }
                  //     else{
                  //       passToggle=false;
                  //     }
                  //     setState(() {});
                  //   },
                  //   child: passToggle ? Icon(CupertinoIcons.eye_slash_fill) : Icon(CupertinoIcons.eye_fill)
                  //   )
                ), 
              ),
              ),
               SizedBox(height: 7,),
               Padding(padding: EdgeInsets.fromLTRB(12,0,12,0),
              child: TextField(
                decoration: InputDecoration(
                  prefixIconColor: Colors.green,
                  border: OutlineInputBorder(),
                  label: Text("Phone Number"),
                  prefixIcon: Icon(Icons.phone),
                ), 
              ),
              ),
              SizedBox(height: 7,),
              Padding(padding: EdgeInsets.fromLTRB(12,0,12,0),
              child: TextField(
                obscureText: passToggle ? true : false,
                decoration: InputDecoration(
                // focusedBorder: OutlineInputBorder(borderSide:BorderSide(color: Colors.purple,),
                prefixIconColor: Colors.green,
                suffixIconColor: Colors.green,
                  border: OutlineInputBorder(),
                  label: Text("Password"),
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: InkWell(
                      child: passToggle ? 
                    Icon(CupertinoIcons.eye_slash_fill) : 
                    Icon(CupertinoIcons.eye_fill),
                    onTap: () {
                      if(passToggle==true){
                        passToggle=false;
                      }
                      else{
                        passToggle=true;
                      }
                      setState(() {});
                    },
                    )
                ), 
              ),
              ),
               SizedBox(height: 7,),
               Padding(padding: EdgeInsets.fromLTRB(12,0,12,0),
              child: TextField(
                // obscureText: passToggle ? true : false,
                decoration: InputDecoration(
                // focusedBorder: OutlineInputBorder(borderSide:BorderSide(color: Colors.purple,),
                prefixIconColor: Colors.green,
                suffixIconColor: Colors.green,
                  border: OutlineInputBorder(),
                  label: Text("Confirm Password"),
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: InkWell(
                    child: passToggle ? 
                    Icon(CupertinoIcons.eye_slash_fill) :
                     Icon(CupertinoIcons.eye_fill),
                    onTap: () {
                      if(passToggle==true){
                        passToggle=false;
                      }
                      else{
                        passToggle=true;
                      }
                      setState(() {});
                    },
                    )
                ), 
              ),
              ),
               SizedBox(height: 7,),
              SizedBox(height: 12,),
              Material(
              color: Colors.green,
              borderRadius: BorderRadius.circular(10),
              child: InkWell(
                onTap: () {
                //  Navigator.push(context,MaterialPageRoute(builder:(context)=>LoginView()));
               Get.toNamed(Routes.LOGIN);
                },
                child: Padding(padding:EdgeInsets.symmetric(vertical:15,horizontal: 40),
                child: Text("SignUp",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 22),),
                ),
              ), 
            ),
             SizedBox(height: 12,),
              Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Text("Already have an account?",style: TextStyle(fontSize: 15,color: Colors.black),),
                    SizedBox(width: 10,),
                    TextButton(onPressed: (){
                    Get.toNamed(Routes.LOGIN);
                    }
                    , child:Text(
                     "Login",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.blue)
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
