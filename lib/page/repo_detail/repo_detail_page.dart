import 'package:flutter/material.dart';
import 'package:flutter_getx_playground/page/repo_detail/controller/repo_detail_controller.dart';
import 'package:get/get.dart';

class RepoDetailPage extends StatelessWidget {
  const RepoDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RepoDetail'),
      ),
      body: Obx(() {
        final loading = RepoDetailController.to.loading;

        final repoDetail = RepoDetailController.to.repoDetail;

        if (loading.value) return const Center(child: CircularProgressIndicator());

        return Column(
          children: [Text(repoDetail.toString())],
        );
      }),
    );
  }
}
