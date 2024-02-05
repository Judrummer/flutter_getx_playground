import 'package:flutter_getx_playground/data/response/github_response.dart';

import '../model/repo_list_model.dart';

RepoItemModel mapToRepoItemModel(RepoResponse response) => RepoItemModel(
      id: response.id ?? 0,
      name: response.name ?? '',
      description: response.description ?? '',
    );
