import 'package:flutter_getx_playground/common/base/base_controller.dart';
import 'package:flutter_getx_playground/common/common_constants.dart';
import 'package:flutter_getx_playground/data/response/github_response.dart';
import 'package:flutter_getx_playground/data/service/github/github_service.dart';
import 'package:flutter_getx_playground/page/repo_detail/model/repo_detail_model.dart';
import 'package:flutter_getx_playground/page/repo_detail/util/repo_detail_util.dart';
import 'package:get/get.dart';

class RepoDetailController extends BaseController {
  final GithubService _githubService = Get.find();

  RepoDetailController();

  final _contributorResponses = <ContributorResponse>[].obs;
  final _repoDetailResponse = const RepoDetailResponse().obs;
  final loading = true.obs;

  RepoDetailModel get repoDetail {
    return mapToRepoDetailModel(_repoDetailResponse.value, _contributorResponses);
  }

  // String get name => _repoDetailResponse.value.name ?? '';
  // String get description => _repoDetailResponse.value.description ?? '';
  // String get language => _repoDetailResponse.value.language ?? '';
  //
  // // required String sshUrl,
  // // required String starCountText,
  // // required List<ContributorItemModel> contributors,

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
