import 'package:flutter_getx_playground/data/response/github_response.dart';
import 'package:flutter_getx_playground/page/repo_list/util/repo_list_util.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('mapToRepoItemModel', () {
    test('correctly maps RepoResponse to RepoItemModel', () {
      // Arrange
      const repoResponse = RepoResponse(
        id: 123,
        name: 'Test Repo',
        description: 'This is a test repository',
      );

      // Act
      final result = mapToRepoItemModel(repoResponse);

      // Assert
      expect(result.id, 123);
      expect(result.name, 'Test Repo');
      expect(result.description, 'This is a test repository');
    });

    test('handles null values in RepoResponse', () {
      // Arrange
      const RepoResponse repoResponse = RepoResponse(
        id: null,
        name: null,
        description: null,
      );

      // Act
      final result = mapToRepoItemModel(repoResponse);

      // Assert
      expect(result.id, 0); // Default value for `id` when null
      expect(result.name, ''); // Default value for `name` when null
      expect(result.description, ''); // Default value for `description` when null
    });
  });
}
