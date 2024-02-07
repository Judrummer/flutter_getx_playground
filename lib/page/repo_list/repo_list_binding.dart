import 'package:flutter_getx_playground/page/repo_list/repo_list_controller.dart';
import 'package:get/get.dart';

class RepoListBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RepoListController>(() => RepoListController());
  }
}
