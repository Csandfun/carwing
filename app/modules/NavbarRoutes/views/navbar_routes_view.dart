// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:carwing_project/app/modules/Login/views/login_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/navbar_routes_controller.dart';

class NavbarRoutesView extends GetView<NavbarRoutesController> {
  // const NavbarRoutesView({Key? key}) : super(key: key);
  int _selectedIndex=0;
  final tabs=[
    HomeScreen(),
    Container(),
    Container(),
    Container(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.white,
  
    body:Container(),
    tabs{_selectedIndex},
    // ignore: sized_box_for_whitespace
    Container(
      height: 80,
      child: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.purple,
        unselectedItemColor: Colors.black26, 
        selectedLabelStyle: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 15,
        ),
        currentIndex: _selectedIndex,
        onTap: (index){
          setState(() {
            _selectedIndex=index;
          });
        },
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home_filled),
        label: "Home",
        ),
         BottomNavigationBarItem(icon: Icon(Icons.home_filled),
        label: "Home",
        ),
         BottomNavigationBarItem(icon: Icon(Icons.home_filled),
        label: "Home",
        ),
         BottomNavigationBarItem(icon: Icon(Icons.home_filled),
        label: "Home",
        )
      ],
      ),
    ),
    );
  }
}

class HomeScreen {
}
