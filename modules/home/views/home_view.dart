// import 'package:carwing_project/app/modules/First/views/first_view.dart';
import 'package:carwing_project/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
// import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
    body: InkWell(
      child: GestureDetector(
        onTap: (){
          Get.toNamed(Routes.FIRST);
        },
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Lottie.asset(
              'assets/animation_lmt6zc5x.json',
              height: 350,
              reverse: true,
              repeat: true,
              fit: BoxFit.cover,
          
            ),
            Text("CareWave",style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              color: Colors.black
              ),
              ),
            ],
            ),
        ),
      ),
    ),
    );
  }
}
