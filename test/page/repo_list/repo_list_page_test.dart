import 'package:flutter/material.dart';
import 'package:flutter_getx_playground/page/repo_list/component/repo_item.dart';
import 'package:flutter_getx_playground/page/repo_list/model/repo_list_model.dart';
import 'package:flutter_getx_playground/page/repo_list/repo_list_controller.dart';
import 'package:flutter_getx_playground/page/repo_list/repo_list_page.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:mocktail/mocktail.dart';

class _RepoListControllerMock extends GetxController with Mock implements RepoListController {}

void main() {
  group('RepoListPage', () {
    late RepoListController controller;

    setUp(() {
      controller = _RepoListControllerMock();
      registerFallbackValue(controller);
    });

    Future<void> pumpPage(WidgetTester tester) async {
      await tester.pumpWidget(
        GetMaterialApp(
          home: GetBuilder<RepoListController>(
            init: controller,
            builder: (_) => const RepoListPage(),
          ),
        ),
      );
    }

    testWidgets('show loading', (WidgetTester tester) async {
      when(() => controller.repos).thenAnswer((_) => []);
      when(() => controller.loading).thenAnswer((_) => true.obs);

      await pumpPage(tester);

      expect(find.byType(CircularProgressIndicator), findsOne);
    });

    testWidgets('show items and tap one', (WidgetTester tester) async {
      const mockRepos = [
        RepoItemModel(
          id: 1,
          name: 'flutter',
          description: 'Flutter make it easy',
        ),
        RepoItemModel(
          id: 2,
          name: 'codelabs',
          description: 'dddd',
        )
      ];
      when(() => controller.repos).thenAnswer((_) => mockRepos);
      when(() => controller.loading).thenAnswer((_) => false.obs);

      await pumpPage(tester);

      expect(find.text('codelabs'), findsOne);
      expect(find.text('dddd'), findsOne);

      await tester.tap(find.widgetWithText(RepoItem, 'codelabs'));
      verify(() => controller.onClickRepoItem(2));
    });
  });
}
