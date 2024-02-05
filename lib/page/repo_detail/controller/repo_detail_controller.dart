import 'package:flutter_getx_playground/common/common_constants.dart';
import 'package:flutter_getx_playground/data/response/github_response.dart';
import 'package:flutter_getx_playground/data/service/github_service.dart';
import 'package:flutter_getx_playground/page/repo_detail/model/repo_detail_model.dart';
import 'package:flutter_getx_playground/page/repo_detail/util/repo_detail_util.dart';
import 'package:get/get.dart';

class RepoDetailController extends GetxController {
  final GithubService _githubService;

  RepoDetailController(this._githubService);

  final _contributorResponses = <ContributorResponse>[].obs;
  final _repoDetailResponse = const RepoDetailResponse().obs;
  final loading = true.obs;

  RepoDetailModel get repoDetail {
    return mapToRepoDetailModel(_repoDetailResponse.value, _contributorResponses.value);
  }

  @override
  void onInit() {
    super.onInit();
    fetchData();
  }

  Future<void> fetchData() async {
    final repoName = Get.parameters['repoName'];
    if (repoName == null) return;

    loading.value = true;

    _contributorResponses.value = await _githubService.getContributors(username: username, repoName: repoName);
    _repoDetailResponse.value = await _githubService.getUserRepoDetail(username: username, repoName: repoName);

    loading.value = false;
  }

  static RepoDetailController get to => Get.find();
}
