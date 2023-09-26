// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:carwing_project/app/modules/Dashboard/views/dashboard_view.dart';
import 'package:carwing_project/app/modules/Messages/views/messages_view.dart';
import 'package:carwing_project/app/modules/Schedule/views/schedule_view.dart';
import 'package:carwing_project/app/modules/Settings/views/settings_view.dart';

// class NavigatorViewStateController extends GetxController {
//   final List<GlobalKey<NavigatorState>> navigatorKeys = [
//     GlobalKey<NavigatorState>(),
//     GlobalKey<NavigatorState>(),
//     GlobalKey<NavigatorState>(),
//     GlobalKey<NavigatorState>(),
//   ];

//   int selectedIndex = 0;

//   void setIndex(int index) {
//     selectedIndex = index;
//     update();
//   }
// }

// class NavigatorView extends StatelessWidget {
//   final NavigatorViewStateController controller =
//       Get.put(NavigatorViewStateController());

//   @override
//   Widget build(BuildContext context) {
//     return WillPopScope(
//       onWillPop: () async {
//         final navigatorKey = controller.navigatorKeys[controller.selectedIndex];
//         return !(await navigatorKey.currentState!.maybePop()); 
//              },
//       child: Scaffold(
//         body: Obx(
//           () => IndexedStack(
//             index: controller.selectedIndex,
//             children: [
//               Navigator(
//                 key: controller.navigatorKeys[0],
//                 onGenerateRoute: (routeSettings) {
//                   return MaterialPageRoute(
//                     builder: (context) => DashboardView(),
//                   );
//                 },
//               ),
//               Navigator(
//                 key: controller.navigatorKeys[1],
//                 onGenerateRoute: (routeSettings) {
//                   return MaterialPageRoute(
//                     builder: (context) => MessagesView(),
//                   );
//                 },
//               ),
//               Navigator(
//                 key: controller.navigatorKeys[2],
//                 onGenerateRoute: (routeSettings) {
//                   return MaterialPageRoute(
//                     builder: (context) => ScheduleView(),
//                   );
//                 },
//               ),
//               Navigator(
//                 key: controller.navigatorKeys[3],
//                 onGenerateRoute: (routeSettings) {
//                   return MaterialPageRoute(
//                     builder: (context) => SettingsView(),
//                   );
//                 },
//               ),
//             ],
//           ),
//         ),
//         bottomNavigationBar: BottomNavigationBar(
//           currentIndex: controller.selectedIndex,
//           onTap: (index) {
//             controller.setIndex(index);
//           },
//           backgroundColor: Colors.white,
//           type: BottomNavigationBarType.fixed,
//           selectedItemColor: Colors.green,
//           unselectedItemColor: Colors.black54,
//           selectedLabelStyle: TextStyle(
//             fontWeight: FontWeight.bold,
//             fontSize: 15,
//           ),
//           items: [
//             BottomNavigationBarItem(
//               icon: Icon(Icons.home_filled),
//               label: "Home",
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(CupertinoIcons.chat_bubble_text_fill),
//               label: "Message",
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.calendar_month),
//               label: "Schedule",
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.settings),
//               label: "Settings",
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

class NavigatorViewStateController extends GetxController {
  final List<GlobalKey<NavigatorState>> navigatorKeys = [
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
  ];

  final RxInt selectedIndex = 0.obs;

  void setIndex(int index) {
    selectedIndex.value = index;
  }
}

class NavigatorView extends StatelessWidget {
  final NavigatorViewStateController controller =
      Get.put(NavigatorViewStateController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => IndexedStack(
          index: controller.selectedIndex.value,
          children: [
            Navigator(
              key: controller.navigatorKeys[0],
              onGenerateRoute: (routeSettings) {
                return MaterialPageRoute(
                  builder: (context) => DashboardView(),
                );
              },
            ),
            Navigator(
              key: controller.navigatorKeys[1],
              onGenerateRoute: (routeSettings) {
                return MaterialPageRoute(
                  builder: (context) => MessagesView(),
                );
              },
            ),
            Navigator(
              key: controller.navigatorKeys[2],
              onGenerateRoute: (routeSettings) {
                return MaterialPageRoute(
                  builder: (context) => ScheduleView(),
                );
              },
            ),
            Navigator(
              key: controller.navigatorKeys[3],
              onGenerateRoute: (routeSettings) {
                return MaterialPageRoute(
                  builder: (context) => SettingsView(),
                );
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: controller.selectedIndex.value,
          onTap: (index) {
            controller.setIndex(index);
          },
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
            ),
          ],
        ),
      ),
    );
  }
}
