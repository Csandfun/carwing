import 'package:get/get.dart';

import '../controllers/settings1_controller.dart';

class Settings1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Settings1Controller>(
      () => Settings1Controller(),
    );
  }
}
