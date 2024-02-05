import 'package:flutter_getx_playground/common/common_constants.dart';
import 'package:flutter_getx_playground/data/response/github_response.dart';
import 'package:flutter_getx_playground/data/service/github_service.dart';
import 'package:flutter_getx_playground/page/repo_list/model/repo_list_model.dart';
import 'package:flutter_getx_playground/page/repo_list/util/repo_list_util.dart';
import 'package:get/get.dart';

class RepoListController extends GetxController {
  final GithubService _githubService;

  RepoListController(this._githubService);

  final _responses = <RepoResponse>[].obs;

  final loading = true.obs;

  List<RepoItemModel> get repos => _responses.map(mapToRepoItemModel).toList();

  @override
  void onInit() {
    super.onInit();
    fetchData();
  }

  Future<void> fetchData() async {
    loading.value = true;
    _responses.value = await _githubService.getUserRepos(username: username);
    loading.value = false;
  }

  static RepoListController get to => Get.find();

  void onClickRepoItem(int id) {
    final repoName = _responses.firstWhereOrNull((x) => x.id == id)?.name;
    if (repoName == null) return;

    Get.toNamed('/repoDetail/$repoName');
  }
}
