import 'package:flutter_getx_playground/page/repo_detail/repo_detail_controller.dart';
import 'package:get/get.dart';

class RepoDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RepoDetailController>(() => RepoDetailController());
  }
}
