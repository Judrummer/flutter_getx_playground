import 'package:flutter_getx_playground/data/extension/get_connect_extension.dart';
import 'package:flutter_getx_playground/data/response/github_response.dart';
import 'package:get/get.dart';

import '../base/base_http_service.dart';
import 'github_service.dart';
import 'mixin/get_user_repos_mixin.dart';

// TODO: pagination query param
class GithubServiceImplV1 implements BaseHttpService, GithubService {
  @override
  final GetConnect connect = GetConnect();

  @override
  String get baseUrl => "https://api.github.com/";

  @override
  Future<List<ContributorResponse>> getContributors({required String username, required String repoName}) =>
      connect.get('${baseUrl}repos/$username/$repoName/contributors?page=0&per_page=10').decodeJsonList(ContributorResponse.fromJson);

  @override
  Future<UserResponse> getUser({required String username}) => connect.get('${baseUrl}users/$username').decodeJson(UserResponse.fromJson);

  @override
  Future<RepoDetailResponse> getUserRepoDetail({required String username, required String repoName}) =>
      connect.get('${baseUrl}repos/$username/$repoName').decodeJson(RepoDetailResponse.fromJson);

  @override
  Future<List<RepoResponse>> getUserRepos({required String username}) =>
      connect.get('${baseUrl}users/$username/repos?page=0&per_page=10').decodeJsonList(RepoResponse.fromJson);
}
