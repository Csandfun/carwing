import 'package:get/get.dart';

import '../controllers/navbar_routes_controller.dart';

class NavbarRoutesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NavbarRoutesController>(
      () => NavbarRoutesController(),
    );
  }
}
