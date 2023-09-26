// ignore_for_file: use_key_in_widget_constructors, must_be_immutable, non_constant_identifier_names, prefer_typing_uninitialized_variables, prefer_const_literals_to_create_immutables, unused_local_variable

import 'package:carwing_project/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  // const DashboardView({Key? key}) : super(key: key);
  List Symptoms =[
    "Temperatur",
    "sunffle",
    "Fever",
    "Cough",
    "Cold",
  ];

  List img=[
  "doc5.jpg",
  "doc4.jpg",
  "doc2.jpg",
  "doc3.jpg"
  ];
  Widget build(BuildContext context) {
    var index;
    return Scaffold(
      backgroundColor: Colors.white,
    body:SingleChildScrollView(
      padding: EdgeInsets.only(top: 40),
      child: Column(
        mainAxisAlignment:MainAxisAlignment.start,
        children: [
          Padding(padding: EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Hello Allex",style: TextStyle(fontSize: 34,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              decoration: null,
              ),
              ),
              CircleAvatar(
                radius: 35,
                backgroundImage: AssetImage('assets/doc3.jpg'),
              )
            ]),
          ),
          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: (){
                  // Get.toNamed(Routes.SETTINGS1);
                },
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow:[BoxShadow (
                      color: Colors.black12,
                      blurRadius: 6,
                      spreadRadius: 4,
                    )
                    ],
                  ),
                  child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle
                      ),
                      child: Icon(Icons.add,
                      color: Colors.green,
                      size: 35,),
                    ),
                    SizedBox(height: 30,),
                    Text(
                      "Clinic Visit",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(height: 5,),
                    Text("Make an appointment",style: TextStyle(color: Colors.white60),)
                  ],
                  ),
                ),
              ),
              InkWell(
                onTap: (){},
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow:[BoxShadow (
                      color: Colors.black12,
                      blurRadius: 6,
                      spreadRadius: 4,
                    )
                    ],
                  ),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.green,
                        shape: BoxShape.circle
                      ),
                      child: Icon(Icons.home_filled,
                      color: Colors.white,
                      size: 35,),
                    ),
                    SizedBox(height: 30,),
                    Text(
                      "Home Visit",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(height: 5,),
                    Text("Call the doctor home",style: TextStyle(color: Colors.black45),)
                  ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 25,),
          Padding(
            padding: EdgeInsets.only(left:0),
          child: Text("What Are Your Symptoms?",
          style: TextStyle(
            fontSize: 21,
          fontWeight:FontWeight.w600,
          color: Colors.black,
          ),),
          ),
          SizedBox(height: 7,),
          SizedBox(height:70,
          child:ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: Symptoms.length,
            itemBuilder:(context, index){
              return Container(
                margin: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                padding: EdgeInsets.symmetric(horizontal:25 ),
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 4,
                      spreadRadius: 2,
                    ),
                  ]
                ),
                child: Center(
                  child: Text(Symptoms[index],
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                  ),
                ),
              );
            }
          )
          ),
          SizedBox(height: 15,),
          Padding(padding: EdgeInsets.only(left: 15),
          child: Text("Popular Doctors",style: TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),),
         ),

         GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemCount: 4,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index){
            return InkWell(
              onTap: () {
                Get.toNamed(Routes.APPOINTMENT);
              },
              child: Container(
                margin: EdgeInsets.all(8),
                padding: EdgeInsets.symmetric(vertical: 15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black45,
                      blurRadius: 4,
                      spreadRadius: 2,
                    )
                  ]
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage("assets/${img[index]}"),
                    ),
                    Text("Dr. Doctor Name",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.black87,
                    ),
                  ),
                  Text("Therapist",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black45,
                  ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                       Icons.star,
                       color: Colors.amber, 
                      ),
                      Text("4.9",
                      style: TextStyle(
                        color: Colors.black45
                      ),)
                    ],
                  )
                    ],
                ),
              ),
            );
          }
           )
      ]),
    ),
    );
  }
}
