import 'package:flutter_getx_playground/app_router.dart';
import 'package:flutter_getx_playground/common/common_constants.dart';
import 'package:flutter_getx_playground/data/response/github_response.dart';
import 'package:flutter_getx_playground/data/service/github_service.dart';
import 'package:flutter_getx_playground/page/repo_list/model/repo_list_model.dart';
import 'package:flutter_getx_playground/page/repo_list/repo_list_controller.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:mocktail/mocktail.dart';

class _GithubServiceMock extends Mock implements GithubService {}

class _AppRouterMock extends Mock implements AppRouter {}

void main() {
  group('RepoListController', () {
    const mockRepoResponses = [
      RepoResponse(
        id: 1,
        name: 'Flutter',
        description: 'Flutter Description',
      ),
      RepoResponse(
        id: 2,
        name: 'Android',
        description: 'Android Description',
      ),
    ];
    const expectedRepoItems = [
      RepoItemModel(
        id: 1,
        name: 'Flutter',
        description: 'Flutter Description',
      ),
      RepoItemModel(
        id: 2,
        name: 'Android',
        description: 'Android Description',
      ),
    ];

    final GithubService githubService = _GithubServiceMock();
    final AppRouter appRouter = _AppRouterMock();

    late RepoListController controller;

    setUp(() {
      controller = RepoListController(githubService, appRouter);
      Get.testMode = true;
    });

    group('fetchData', () {
      test('should set repos correct when api is success', () async {
        // Arrange
        when(() => githubService.getUserRepos(username: username)).thenAnswer((_) => Future.value(mockRepoResponses));

        // Act
        await controller.fetchData();

        // Assert
        expect(controller.loading.value, false);
        expect(controller.repos, expectedRepoItems);
      });
    });

    group('onClickRepoItem', () {
      test('should openRepoDetailPage when id is exist', () async {
        // Arrange
        when(() => appRouter.openRepoDetailPage(repoName: 'Flutter')).thenAnswer((_) async {});
        controller.responses.value = mockRepoResponses;

        // Act
        controller.onClickRepoItem(1);

        // Assert
        verify(() => appRouter.openRepoDetailPage(repoName: 'Flutter'));
      });

      test('should not openRepoDetailPage when id not is exist', () async {
        // Arrange
        when(() => appRouter.openRepoDetailPage(repoName: 'Flutter')).thenAnswer((_) async {});
        controller.responses.value = mockRepoResponses;

        // Act
        controller.onClickRepoItem(20);

        // Assert
        verifyNever(() => appRouter.openRepoDetailPage(repoName: 'Flutter'));
      });
    });
  });
}
