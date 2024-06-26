// ignore_for_file: must_be_immutable

import 'package:carwing_project/app/routes/app_pages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';

import '../controllers/messages_controller.dart';

class MessagesView extends GetView<MessagesController> {
  // const MessagesView({Key? key}) : super(key: key);

   List img=[
  "doc5.jpg",
  "doc4.jpg",
  "doc2.jpg",
  "doc3.jpg",
   "doc4.jpg",
   "doc5.jpg",
  ];

  MessagesView({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        SizedBox(height: 40,),
        Padding(padding: EdgeInsets.symmetric(horizontal: 20),
        child: Text(
          "Messages",
          style: TextStyle(
           fontSize: 20,
           fontWeight: FontWeight.bold
          ),
        ),
        ),
        SizedBox(height: 30,),
        Padding(padding: EdgeInsets.symmetric(horizontal: 15),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow:[
              BoxShadow(
                color: Colors.black12,
                blurRadius: 10,
                spreadRadius: 2,
              )
            ]
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 300,
                child: Padding(padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "search",
                    border: InputBorder.none
                  ),
                ),
                ),
              ),
              Icon(Icons.search,color:Colors.black87,
              ),
            ]
            ),
        ),
        ),
        SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 7),
          child: Text(
            "   Active Now",
          style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),
          ),
        ),
        SizedBox(height: 90,
        child:ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 6,
          shrinkWrap: true,
          itemBuilder:(context,index){
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 8),
            width: 65,
            height: 65,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  spreadRadius: 2,
                  blurRadius: 10,
                )
              ]
            ),
            child: Stack(
              textDirection: TextDirection.rtl,
              children: [
                Center(child: Container(
                  height:65,
                  width: 65,
                  child: ClipRRect(borderRadius: BorderRadius.circular(30),
                  child: Image.asset("assets/${img[index]}",fit: BoxFit.cover,
                  ),
                  ),
                ),
                ),
                Container(
                  margin: EdgeInsets.all(3),
                  padding: EdgeInsets.all(3),
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                    ),
                  ),
                )
              ],
            ),
          );
        }
        )
        ),
        SizedBox(height: 10,),
        Padding(padding:EdgeInsets.symmetric(horizontal: 20),
        child: Text(
          "Recent Chat",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700
          ),
        ), 
        ),
        ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          itemCount: 6,
          shrinkWrap: true,

          itemBuilder: ((context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: ListTile(
             onTap: (){
              Get.toNamed(Routes.CHATPAGE);
             },
             leading: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage("assets/${img[index]}"),
             ),
             title: Text("Dr.Doctor Name",
             style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
             ),
             ),
             subtitle: Text(
              "Hello,Doctor are you there?",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize:15,
                color: Colors.black54, 
              ),
             ),
             trailing: Text(
              "12:30",
              style: TextStyle(
                fontSize: 14,
                color: Colors.black54,
              ),
             ),
            ),
          );
        }))
        ],
        ),
    );
  }
}
