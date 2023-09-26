// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/settings_controller.dart';

class SettingsView extends GetView<SettingsController> {
  const SettingsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: Colors.white,
      body:SingleChildScrollView(
        padding: EdgeInsets.only(top: 40),
        child: Column(
          mainAxisAlignment:MainAxisAlignment.start,
          children: [
            Padding(padding: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Settings",style: TextStyle(
                  fontSize: 29,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                decoration: null,
                ),
                ),
                SizedBox(height: 30,),
                ListTile(
              leading: CircleAvatar(
                radius: 35,
                backgroundImage: AssetImage("assets/doc3.jpg"),
              ),
              title: Text("Dr.Doctor Name",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 23,
              ),
              ),
              subtitle: Text("Profile",style: TextStyle(
                fontSize: 16,
              ),
              ),
            ),
            Divider(height: 50,),
            ListTile(
              onTap: () {},
              leading: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.blue[100],
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  CupertinoIcons.person,
                  color: Color.fromARGB(255, 2, 107, 193),
                  size: 30,
                ),
              ),
              title: Text("Profile",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
              ),
              trailing: Icon(Icons.arrow_forward_ios_rounded),
            ),
            SizedBox(height: 15),
            ListTile(
              onTap: () {},
              leading: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.purple[100],
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.notifications_none_outlined,
                  color: Colors.purple,
                  size: 30,
                ),
              ),
              title: Text("Notifications",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
              ),
              trailing: Icon(Icons.arrow_forward_ios_rounded),
            ),
             SizedBox(height: 15),
            ListTile(
              onTap: () {},
              leading: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.indigo[100],
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.privacy_tip_outlined,
                  color: Colors.indigo,
                  size: 30,
                ),
              ),
              title: Text("Privacy",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
              ),
              trailing: Icon(Icons.arrow_forward_ios_rounded),
            ),
             SizedBox(height: 15),
            ListTile(
              onTap: () {},
              leading: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 155, 210, 158),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.settings_suggest_outlined,
                  color: Colors.green,
                  size: 30,
                ),
              ),
              title: Text("General",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
              ),
              trailing: Icon(Icons.arrow_forward_ios_rounded),
            ),
             SizedBox(height: 15),
            ListTile(
              onTap: () {},
              leading: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.orange[100],
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.info_outline_rounded,
                  color: Colors.orange,
                  size: 30,
                ),
              ),
              title: Text("About Us",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
              ),
              trailing: Icon(Icons.arrow_forward_ios_rounded),
            ),
             SizedBox(height: 15),
            ListTile(
              onTap: () {},
              leading: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.red[100],
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.logout,
                  color: Colors.red,
                  size: 30,
                ),
              ),
              title: Text("Log Out",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
              ),
              trailing: Icon(Icons.arrow_forward_ios_rounded),
            ),
              ],
            ),
            ),
          ],
        ),
      ),
      );
  }
}
