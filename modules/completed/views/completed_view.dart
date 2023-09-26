import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/completed_controller.dart';

class CompletedView extends GetView<CompletedController> {
  const CompletedView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CompletedView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'CompletedView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
