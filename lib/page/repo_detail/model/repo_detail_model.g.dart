// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repo_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ContributorItemModelImpl _$$ContributorItemModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ContributorItemModelImpl(
      name: json['name'] as String,
      contributionsText: json['contributionsText'] as String,
      avatarUrl: json['avatarUrl'] as String,
    );

Map<String, dynamic> _$$ContributorItemModelImplToJson(
        _$ContributorItemModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'contributionsText': instance.contributionsText,
      'avatarUrl': instance.avatarUrl,
    };

_$RepoDetailModelImpl _$$RepoDetailModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RepoDetailModelImpl(
      name: json['name'] as String,
      description: json['description'] as String,
      language: json['language'] as String,
      sshUrl: json['sshUrl'] as String,
      starCountText: json['starCountText'] as String,
      contributors: (json['contributors'] as List<dynamic>)
          .map((e) => ContributorItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$RepoDetailModelImplToJson(
        _$RepoDetailModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'language': instance.language,
      'sshUrl': instance.sshUrl,
      'starCountText': instance.starCountText,
      'contributors': instance.contributors,
    };
