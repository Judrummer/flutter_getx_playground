import 'package:flutter/material.dart';
import 'package:flutter_getx_playground/data/service/github_service.dart';
import 'package:flutter_getx_playground/page/repo_detail/binding/repo_detail_binding.dart';
import 'package:flutter_getx_playground/page/repo_detail/repo_detail_page.dart';
import 'package:flutter_getx_playground/page/repo_list/binding/repo_list_binding.dart';
import 'package:flutter_getx_playground/page/repo_list/repo_list_page.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialBinding: AppBinding(),
      initialRoute: '/repoList',
      getPages: [
        GetPage(
          name: '/repoList',
          binding: RepoListBinding(),
          page: () => const RepoListPage(),

        ),
        GetPage(
          name: '/repoDetail/:repoName',
          binding: RepoDetailBinding(),
          page: () => const RepoDetailPage(),
        ),
      ],
      home: const RepoListPage(),
    );
  }
}

class AppBinding implements Bindings {
  @override
  void dependencies() {
    // TODO: flavor fake -> Get.put<GithubService>(GithubServiceFake());
    Get.put<GithubService>(GithubServiceImpl());
  }
}
