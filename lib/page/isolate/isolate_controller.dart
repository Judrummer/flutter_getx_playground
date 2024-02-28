import 'package:flutter_getx_playground/common/base/base_controller.dart';
import 'package:get/get.dart';

class IsolateController extends BaseController {
  final number = 0.obs;

  Future<void> onClickNonIsolate() async {
    // TODO:
  }

  Future<void> onClickIsolate() async {
    // TODO:
  }

  void onClickReset() {
    number.value = 0;
  }
}
