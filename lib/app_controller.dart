import 'package:get/get.dart';

class AppController extends GetxController {
  Future<void> initialize() async {
    await Future.delayed(Duration.zero);
    await Get.offAllNamed('/repoList');
  }
}
