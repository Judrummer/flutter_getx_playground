import 'package:flutter_getx_playground/data/response/github_response.dart';
import 'package:flutter_getx_playground/page/repo_detail/model/repo_detail_model.dart';

RepoDetailModel mapToRepoDetailModel(
  RepoDetailResponse repoDetailResponse,
  List<ContributorResponse> contributorResponses,
) {
  return RepoDetailModel(
    name: repoDetailResponse.name ?? '',
    description: repoDetailResponse.description ?? '',
    language: repoDetailResponse.language ?? '',
    sshUrl: repoDetailResponse.sshUrl ?? '',
    starCountText: repoDetailResponse.stargazersCount?.toString() ?? '',
    contributors: contributorResponses.map(mapToContributorItemModel).toList(),
  );
}

ContributorItemModel mapToContributorItemModel(ContributorResponse response) {
  return ContributorItemModel(
    name: response.login ?? '',
    contributionsText: response.contributions?.toString() ?? '',
    avatarUrl: response.avatarUrl ?? '',
  );
}
