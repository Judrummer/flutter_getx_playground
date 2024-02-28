import 'package:get/get.dart';

import '../base/base_http_service.dart';
import 'github_service.dart';
import 'mixin/get_contributors_mixin.dart';
import 'mixin/get_user_mixin.dart';
import 'mixin/get_user_repo_detail_mixin.dart';
import 'mixin/get_user_repos_mixin.dart';

// TODO: pagination query param
class GithubServiceImpl with GetUserReposMixin, GetUserRepoDetailMixin, GetUserMixin, GetContributorsMixin implements BaseHttpService, GithubService {
  @override
  final GetConnect connect = GetConnect();

  @override
  String get baseUrl => "https://api.github.com/";
}

// void testService(GithubService service){
//   service.getUserRepos(username: username);
//   service.getUser(username: username);
//   service.getUserRepoDetail(username: username, repoName: repoName)
// }
