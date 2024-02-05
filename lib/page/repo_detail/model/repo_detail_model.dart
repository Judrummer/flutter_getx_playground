import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'repo_detail_model.freezed.dart';

part 'repo_detail_model.g.dart';

@freezed
class ContributorItemModel with _$ContributorItemModel {
  const factory ContributorItemModel({
    required String name,
    required String contributionsText,
    required String avatarUrl,
  }) = _ContributorItemModel;

  factory ContributorItemModel.fromJson(Map<String, dynamic> json) => _$ContributorItemModelFromJson(json);
}

@freezed
class RepoDetailModel with _$RepoDetailModel {
  const factory RepoDetailModel({
    required String name,
    required String description,
    required String language,
    required String sshUrl,
    required String starCountText,
    required List<ContributorItemModel> contributors,
  }) = _RepoDetailModel;

  factory RepoDetailModel.fromJson(Map<String, dynamic> json) => _$RepoDetailModelFromJson(json);
}
