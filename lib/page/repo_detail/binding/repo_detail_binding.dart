import 'package:flutter_getx_playground/page/repo_detail/controller/repo_detail_controller.dart';
import 'package:get/get.dart';

class RepoDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RepoDetailController>(() => RepoDetailController(Get.find()));
  }
}
