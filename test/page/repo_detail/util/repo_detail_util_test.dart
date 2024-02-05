import 'package:flutter_getx_playground/data/response/github_response.dart';
import 'package:flutter_getx_playground/page/repo_detail/util/repo_detail_util.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('mapToContributorItemModel', () {
    test('correctly maps ContributorResponse to ContributorItemModel', () {
      // Arrange
      const contributorResponse = ContributorResponse(
        login: 'contributorLogin', // Assuming `login` is a String
        contributions: 42, // Assuming `contributions` is an int
        avatarUrl: 'https://example.com/avatar.png', // Assuming `avatarUrl` is a String
      );

      // Act
      final result = mapToContributorItemModel(contributorResponse);

      // Assert
      expect(result.name, 'contributorLogin');
      expect(result.contributionsText, '42');
      expect(result.avatarUrl, 'https://example.com/avatar.png');
    });

    test('handles null values in ContributorResponse', () {
      // Arrange
      const contributorResponse = ContributorResponse(
        login: null, // Assuming nullable `login`
        contributions: null, // Assuming nullable `contributions`
        avatarUrl: null, // Assuming nullable `avatarUrl`
      );

      // Act
      final result = mapToContributorItemModel(contributorResponse);

      // Assert
      expect(result.name, ''); // Default value for `login` when null
      expect(result.contributionsText, ''); // Default value for `contributions` when null
      expect(result.avatarUrl, ''); // Default value for `avatarUrl` when null
    });
  });

  group('mapToRepoDetailModel', () {
    test('correctly maps RepoDetailResponse and ContributorResponses to RepoDetailModel', () {
      // Arrange
      const repoDetailResponse = RepoDetailResponse(
        name: 'Repo Name',
        description: 'Repo Description',
        language: 'Dart',
        sshUrl: 'git@example.com:repo.git',
        stargazersCount: 100,
      );

      final contributorResponses = [
        const ContributorResponse(
          login: 'contributor1',
          contributions: 150,
          avatarUrl: 'https://example.com/avatar1.png',
        ),
        const ContributorResponse(
          login: 'contributor2',
          contributions: 100,
          avatarUrl: 'https://example.com/avatar2.png',
        ),
      ];

      // Act
      final result = mapToRepoDetailModel(repoDetailResponse, contributorResponses);

      // Assert
      expect(result.name, 'Repo Name');
      expect(result.description, 'Repo Description');
      expect(result.language, 'Dart');
      expect(result.sshUrl, 'git@example.com:repo.git');
      expect(result.starCountText, '100');
      expect(result.contributors.length, 2);
      expect(result.contributors[0].name, 'contributor1');
      expect(result.contributors[0].contributionsText, '150');
      expect(result.contributors[0].avatarUrl, 'https://example.com/avatar1.png');
      expect(result.contributors[1].name, 'contributor2');
      expect(result.contributors[1].contributionsText, '100');
      expect(result.contributors[1].avatarUrl, 'https://example.com/avatar2.png');
    });
  });
}
