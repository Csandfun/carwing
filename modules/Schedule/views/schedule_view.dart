// ignore_for_file: use_key_in_widget_constructors, unused_element, must_be_immutable, prefer_const_constructors

import 'package:carwing_project/app/modules/Login/views/login_view.dart';
import 'package:carwing_project/app/modules/Upcoming/views/upcoming_view.dart';
import 'package:carwing_project/app/modules/completed/views/completed_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/schedule_controller.dart';

class ScheduleView extends GetView<ScheduleController> {
  // const ScheduleView({Key? key}) : super(key: key);

  int _buttonIndex = 0;
  final _scheduleWidgets = [
    UpcomingView(),
    CompletedView(),
    Container(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding:EdgeInsets.only(top: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Padding(padding: EdgeInsets.symmetric(horizontal: 15),
            child: Text("Schedule",
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w500
            ),
            ),
            ),
            SizedBox(height: 5,),
            Container(
              padding: EdgeInsets.all(5),
              margin: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        _buttonIndex = 0;
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                      padding: EdgeInsets.symmetric(vertical: 12,horizontal: 25),
                      decoration: BoxDecoration(
                        color:_buttonIndex == 0 ? Colors.green : Colors.transparent,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Text("Upcoming",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                      ),
                    ),
                  ),
                   InkWell(
                    onTap: () {
                       setState(() {
                        _buttonIndex = 1;
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                      padding: EdgeInsets.symmetric(vertical: 12,horizontal: 25),
                      decoration: BoxDecoration(
                        color: _buttonIndex == 1 ? Colors.green : Colors.transparent,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Text("Completed",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                      ),
                    ),
                  ),
                   InkWell(
                    onTap: () {
                       setState(() {
                        _buttonIndex = 2;
                      });
                    },
                    child: Container(
                      // margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                      padding: EdgeInsets.symmetric(vertical: 12,horizontal: 21.7),
                      decoration: BoxDecoration(
                        color: _buttonIndex == 2 ? Colors.green : Colors.transparent,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Text("Canceled",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                      ),
                    ),
                  ),
                ]),
            ),
            SizedBox(height: 30,),
            _scheduleWidgets[_buttonIndex],
            ],
          ),
           ),
      ),
    );
  }
}

