import 'package:flutter/material.dart';
import 'package:flutter_getx_playground/page/repo_list/component/repo_item.dart';
import 'package:flutter_getx_playground/page/repo_list/repo_list_controller.dart';
import 'package:get/get.dart';


class RepoListPage extends GetView<RepoListController> {
  const RepoListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RepoList'),
      ),
      body: Obx(() {
        final repos = controller.repos;
        final loading = controller.loading;

        if (loading.value) return const Center(child: CircularProgressIndicator());

        return ListView.builder(
          itemCount: repos.length,
          itemBuilder: (context, index) => RepoItem(model: repos[index]),
        );
      }),
    );
  }
}
