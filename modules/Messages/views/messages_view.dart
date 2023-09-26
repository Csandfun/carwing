import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';

import '../controllers/messages_controller.dart';

class MessagesView extends GetView<MessagesController> {
  const MessagesView({Key? key}) : super(key: key);
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
            decoration: BoxDecoration(),
          );
        })),
        ],
        ),
    );
  }
}
