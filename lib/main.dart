import 'package:flutter/material.dart';
import 'package:flutter_getx_playground/app_controller.dart';
import 'package:flutter_getx_playground/app_router.dart';
import 'package:flutter_getx_playground/common/common_model.dart';
import 'package:flutter_getx_playground/data/service/github/github_service.dart';
import 'package:flutter_getx_playground/data/service/github/github_service_fake.dart';
import 'package:flutter_getx_playground/page/repo_detail/repo_detail_binding.dart';
import 'package:flutter_getx_playground/page/repo_detail/repo_detail_page.dart';
import 'package:flutter_getx_playground/page/repo_list/repo_list_binding.dart';
import 'package:flutter_getx_playground/page/repo_list/repo_list_page.dart';
import 'package:flutter_getx_playground/page/splash_screen/splash_screen_page.dart';
import 'package:get/get.dart';

import 'data/service/github/github_service_impl.dart';

void main() {
  runApp(const MyApp(
    env: Environment.dev,
  ));
}

class MyApp extends StatelessWidget {
  final Environment env;

  const MyApp({
    super.key,
    required this.env,
  });

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialBinding: AppBinding(env),
      initialRoute: '/splashScreen',
      getPages: [
        GetPage(
          name: '/splashScreen',
          page: () => const SplashScreenPage(),
        ),
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
      home: const SplashScreenPage(),
    );
  }
}

class AppBinding implements Bindings {
  final Environment env;

  AppBinding(this.env);

  @override
  void dependencies() {
    Get.put(AppController(), permanent: true);
    Get.put(AppRouter(), permanent: true);

    if (env == Environment.fake) {
      Get.put<GithubService>(GithubServiceFake(), permanent: true);
    } else {
      Get.put<GithubService>(GithubServiceImpl(), permanent: true);
    }
  }
}
