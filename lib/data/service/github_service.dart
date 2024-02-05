import 'package:flutter_getx_playground/data/extension/get_connect_extension.dart';
import 'package:flutter_getx_playground/data/response/github_response.dart';
import 'package:get/get_connect/connect.dart';

abstract class GithubService {
  Future<UserResponse> getUser({required String username});

  Future<List<RepoResponse>> getUserRepos({required String username});

  Future<RepoDetailResponse> getUserRepoDetail({required String username, required String repoName});

  Future<List<ContributorResponse>> getContributors({required String username, required String repoName});
}

// TODO: pagination query param
class GithubServiceImpl extends GetConnect implements GithubService {
  final _url = "https://api.github.com/";

  @override
  Future<List<ContributorResponse>> getContributors({required String username, required String repoName}) =>
      get('${_url}repos/$username/$repoName/contributors?page=0&per_page=10').decodeJsonList(ContributorResponse.fromJson);

  @override
  Future<UserResponse> getUser({required String username}) => get('${_url}users/$username').decodeJson(UserResponse.fromJson);

  @override
  Future<RepoDetailResponse> getUserRepoDetail({required String username, required String repoName}) =>
      get('${_url}repos/$username/$repoName').decodeJson(RepoDetailResponse.fromJson);

  @override
  Future<List<RepoResponse>> getUserRepos({required String username}) =>
      get('${_url}users/$username/repos?page=0&per_page=10').decodeJsonList(RepoResponse.fromJson);
}

class GithubServiceFake implements GithubService {
  @override
  Future<List<ContributorResponse>> getContributors({required String username, required String repoName}) async {
    return [];
  }

  @override
  Future<UserResponse> getUser({required String username}) async {
    return UserResponse();
  }

  @override
  Future<RepoDetailResponse> getUserRepoDetail({required String username, required String repoName}) async {
    return RepoDetailResponse();
  }

  @override
  Future<List<RepoResponse>> getUserRepos({required String username}) async {
    return [];
  }
}
