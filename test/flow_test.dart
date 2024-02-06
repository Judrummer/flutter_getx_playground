import 'package:flutter_getx_playground/common/common_model.dart';
import 'package:flutter_getx_playground/main.dart';
import 'package:flutter_getx_playground/page/repo_detail/repo_detail_page.dart';
import 'package:flutter_getx_playground/page/repo_list/component/repo_item.dart';
import 'package:flutter_getx_playground/page/repo_list/repo_list_page.dart';
import 'package:flutter_getx_playground/page/splash_screen/splash_screen_page.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Flow Test', () {
    testWidgets('Happy Path', (tester) async {
      await tester.runAsync(() async {
        await tester.pumpWidget(const MyApp(env: Environment.fake));

        expect(find.byType(SplashScreenPage), findsOne);

        await Future.delayed(Duration.zero);
        await tester.pumpAndSettle();

        expect(find.byType(RepoListPage), findsOne);

        final githubRepoItemFinder = find.widgetWithText(RepoItem, '.github');
        expect(githubRepoItemFinder, findsOne);
        await tester.tap(githubRepoItemFinder);

        await tester.pumpAndSettle();

        expect(find.byType(RepoDetailPage), findsOne);
      });
    });
  });
}
