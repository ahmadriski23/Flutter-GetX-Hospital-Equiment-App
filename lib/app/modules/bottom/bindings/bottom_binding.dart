import 'package:get/get.dart';

import '../controllers/bottom_controller.dart';

class BottomViewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BottomViewController>(
      () => BottomViewController(),
    );
  }
}
