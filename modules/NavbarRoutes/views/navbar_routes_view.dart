
// ignore_for_file: must_be_immutable, unused_import, prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_element, duplicate_import
import 'package:carwing_project/app/modules/Dashboard/views/dashboard_view.dart';
import 'package:carwing_project/app/modules/Login/views/login_view.dart';
import 'package:carwing_project/app/modules/Messages/views/messages_view.dart';
import 'package:carwing_project/app/modules/Schedule/views/schedule_view.dart';
import 'package:carwing_project/app/modules/Settings/views/settings_view.dart';
import 'package:carwing_project/app/routes/app_pages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
// import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import '../controllers/navbar_routes_controller.dart';

// class NavbarRoutesView extends GetView<NavbarRoutesController> {
  class NavbarRoutesView extends StatefulWidget {
  const NavbarRoutesView({Key? key}) : super(key: key);

  @override
  State<NavbarRoutesView> createState() => _NavbarRoutesViewState();
}

class _NavbarRoutesViewState extends State<NavbarRoutesView> {
  int _selectedIndex = 0;

  void _navigationBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    DashboardView(),
    MessagesView(),
    ScheduleView(),
    SettingsView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _pages[_selectedIndex],
      bottomNavigationBar: SizedBox(
        height: 80,
        child: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: (value) => _navigationBottomBar(value), // Fix here
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.black54,
          selectedLabelStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.chat_bubble_text_fill),
              label: "Message",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month),
              label: "Schedule",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Settings",
            )
          ],
        ),
      ),
    );
  }
}

