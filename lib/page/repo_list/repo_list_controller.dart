import 'package:flutter/material.dart';
import 'package:flutter_getx_playground/app_router.dart';
import 'package:flutter_getx_playground/common/common_constants.dart';
import 'package:flutter_getx_playground/data/response/github_response.dart';
import 'package:flutter_getx_playground/data/service/github_service.dart';
import 'package:flutter_getx_playground/page/repo_list/model/repo_list_model.dart';
import 'package:flutter_getx_playground/page/repo_list/util/repo_list_util.dart';
import 'package:get/get.dart';

class RepoListController extends GetxController {
  final GithubService _githubService;
  final AppRouter _appRouter;

  RepoListController(this._githubService, this._appRouter);

  @visibleForTesting
  final responses = <RepoResponse>[].obs;

  final loading = true.obs;

  List<RepoItemModel> get repos => responses.map(mapToRepoItemModel).toList();

  @override
  void onInit() {
    super.onInit();
    fetchData();
  }

  Future<void> fetchData() async {
    loading.value = true;
    responses.value = await _githubService.getUserRepos(username: username);
    // TODO: handle error
    loading.value = false;
  }

  void onClickRepoItem(int id) {
    final repoName = responses.firstWhereOrNull((x) => x.id == id)?.name;
    if (repoName == null) return;

    _appRouter.openRepoDetailPage(repoName: repoName);
  }
}