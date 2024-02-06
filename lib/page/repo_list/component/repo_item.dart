import 'package:flutter/material.dart';
import 'package:flutter_getx_playground/page/repo_list/repo_list_controller.dart';
import 'package:flutter_getx_playground/page/repo_list/model/repo_list_model.dart';
import 'package:get/get.dart';

class RepoItem extends StatelessWidget {
  final RepoItemModel model;

  const RepoItem({
    required this.model,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.find<RepoListController>().onClickRepoItem(model.id);
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(model.name),
            Text(model.description),
          ],
        ),
      ),
    );
  }
}
