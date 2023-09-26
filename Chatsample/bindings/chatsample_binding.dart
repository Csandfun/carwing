import 'package:get/get.dart';

import '../controllers/chatsample_controller.dart';

class ChatsampleBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ChatsampleController>(
      () => ChatsampleController(),
    );
  }
}
