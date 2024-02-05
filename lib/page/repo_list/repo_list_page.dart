import 'package:flutter/material.dart';
import 'package:flutter_getx_playground/page/repo_list/component/repo_item.dart';
import 'package:flutter_getx_playground/page/repo_list/controller/repo_list_controller.dart';
import 'package:get/get.dart';

class RepoListPage extends StatelessWidget {
  const RepoListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RepoList'),
      ),
      body: Obx(() {
        final repos = RepoListController.to.repos;
        final loading = RepoListController.to.loading;

        if (loading.value) return const Center(child: CircularProgressIndicator());

        return ListView.builder(
          itemCount: repos.length,
          itemBuilder: (context, index) => RepoItem(model: repos[index]),
        );
      }),
    );
  }
}
