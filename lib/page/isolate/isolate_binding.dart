import 'package:get/get.dart';

import 'isolate_controller.dart';

class IsolateBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IsolateController>(() => IsolateController());
  }
}
