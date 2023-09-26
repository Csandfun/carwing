import 'package:carwing_project/app/modules/Chatsample/views/chatsample_view.dart';
import 'package:carwing_project/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/chatpage_controller.dart';

class ChatpageView extends GetView<ChatpageController> {
  const ChatpageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
         child: AppBar(
          backgroundColor: Colors.green,
          leadingWidth: 30,
          title: Padding(
            padding: const EdgeInsets.only(top:5.0),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage("assets/doc4.jpg"),
                ),
                Padding(
                  padding:EdgeInsets.only(left: 10),
                  child: Text(
                    "Dr.Doctor Name",
                    style: TextStyle(
                      color: Colors.white
                    ),
                  ),
                )
              ]
              ),
          ),
          actions: [
            Padding(padding: EdgeInsets.only(top: 8,right: 13),
            child: Icon(color:Colors.white,Icons.call,size: 24, ),
            ),
             Padding(padding: EdgeInsets.only(top: 8,right: 10),
            child: Icon(color:Colors.white,Icons.video_call,size: 30, ),
            ),
             Padding(padding: EdgeInsets.only(top: 8,right: 10),
            child: Icon(color:Colors.white,Icons.more_vert,size: 28, ),
            )
          ],
         ),
      ),
      body: ListView.builder(
        padding: EdgeInsets.only(top: 20,left: 15,right: 15,bottom: 80),
        itemBuilder:(context, index) => ChatsampleView(),
        ),
    );
  }
}
