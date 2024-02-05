// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'repo_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ContributorItemModel _$ContributorItemModelFromJson(Map<String, dynamic> json) {
  return _ContributorItemModel.fromJson(json);
}

/// @nodoc
mixin _$ContributorItemModel {
  String get name => throw _privateConstructorUsedError;
  String get contributionsText => throw _privateConstructorUsedError;
  String get avatarUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContributorItemModelCopyWith<ContributorItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContributorItemModelCopyWith<$Res> {
  factory $ContributorItemModelCopyWith(ContributorItemModel value,
          $Res Function(ContributorItemModel) then) =
      _$ContributorItemModelCopyWithImpl<$Res, ContributorItemModel>;
  @useResult
  $Res call({String name, String contributionsText, String avatarUrl});
}

/// @nodoc
class _$ContributorItemModelCopyWithImpl<$Res,
        $Val extends ContributorItemModel>
    implements $ContributorItemModelCopyWith<$Res> {
  _$ContributorItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? contributionsText = null,
    Object? avatarUrl = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      contributionsText: null == contributionsText
          ? _value.contributionsText
          : contributionsText // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: null == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContributorItemModelImplCopyWith<$Res>
    implements $ContributorItemModelCopyWith<$Res> {
  factory _$$ContributorItemModelImplCopyWith(_$ContributorItemModelImpl value,
          $Res Function(_$ContributorItemModelImpl) then) =
      __$$ContributorItemModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String contributionsText, String avatarUrl});
}

/// @nodoc
class __$$ContributorItemModelImplCopyWithImpl<$Res>
    extends _$ContributorItemModelCopyWithImpl<$Res, _$ContributorItemModelImpl>
    implements _$$ContributorItemModelImplCopyWith<$Res> {
  __$$ContributorItemModelImplCopyWithImpl(_$ContributorItemModelImpl _value,
      $Res Function(_$ContributorItemModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? contributionsText = null,
    Object? avatarUrl = null,
  }) {
    return _then(_$ContributorItemModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      contributionsText: null == contributionsText
          ? _value.contributionsText
          : contributionsText // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: null == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContributorItemModelImpl
    with DiagnosticableTreeMixin
    implements _ContributorItemModel {
  const _$ContributorItemModelImpl(
      {required this.name,
      required this.contributionsText,
      required this.avatarUrl});

  factory _$ContributorItemModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContributorItemModelImplFromJson(json);

  @override
  final String name;
  @override
  final String contributionsText;
  @override
  final String avatarUrl;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ContributorItemModel(name: $name, contributionsText: $contributionsText, avatarUrl: $avatarUrl)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ContributorItemModel'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('contributionsText', contributionsText))
      ..add(DiagnosticsProperty('avatarUrl', avatarUrl));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContributorItemModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.contributionsText, contributionsText) ||
                other.contributionsText == contributionsText) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, contributionsText, avatarUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContributorItemModelImplCopyWith<_$ContributorItemModelImpl>
      get copyWith =>
          __$$ContributorItemModelImplCopyWithImpl<_$ContributorItemModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContributorItemModelImplToJson(
      this,
    );
  }
}

abstract class _ContributorItemModel implements ContributorItemModel {
  const factory _ContributorItemModel(
      {required final String name,
      required final String contributionsText,
      required final String avatarUrl}) = _$ContributorItemModelImpl;

  factory _ContributorItemModel.fromJson(Map<String, dynamic> json) =
      _$ContributorItemModelImpl.fromJson;

  @override
  String get name;
  @override
  String get contributionsText;
  @override
  String get avatarUrl;
  @override
  @JsonKey(ignore: true)
  _$$ContributorItemModelImplCopyWith<_$ContributorItemModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

RepoDetailModel _$RepoDetailModelFromJson(Map<String, dynamic> json) {
  return _RepoDetailModel.fromJson(json);
}

/// @nodoc
mixin _$RepoDetailModel {
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;
  String get sshUrl => throw _privateConstructorUsedError;
  String get starCountText => throw _privateConstructorUsedError;
  List<ContributorItemModel> get contributors =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RepoDetailModelCopyWith<RepoDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepoDetailModelCopyWith<$Res> {
  factory $RepoDetailModelCopyWith(
          RepoDetailModel value, $Res Function(RepoDetailModel) then) =
      _$RepoDetailModelCopyWithImpl<$Res, RepoDetailModel>;
  @useResult
  $Res call(
      {String name,
      String description,
      String language,
      String sshUrl,
      String starCountText,
      List<ContributorItemModel> contributors});
}

/// @nodoc
class _$RepoDetailModelCopyWithImpl<$Res, $Val extends RepoDetailModel>
    implements $RepoDetailModelCopyWith<$Res> {
  _$RepoDetailModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? language = null,
    Object? sshUrl = null,
    Object? starCountText = null,
    Object? contributors = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      sshUrl: null == sshUrl
          ? _value.sshUrl
          : sshUrl // ignore: cast_nullable_to_non_nullable
              as String,
      starCountText: null == starCountText
          ? _value.starCountText
          : starCountText // ignore: cast_nullable_to_non_nullable
              as String,
      contributors: null == contributors
          ? _value.contributors
          : contributors // ignore: cast_nullable_to_non_nullable
              as List<ContributorItemModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RepoDetailModelImplCopyWith<$Res>
    implements $RepoDetailModelCopyWith<$Res> {
  factory _$$RepoDetailModelImplCopyWith(_$RepoDetailModelImpl value,
          $Res Function(_$RepoDetailModelImpl) then) =
      __$$RepoDetailModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String description,
      String language,
      String sshUrl,
      String starCountText,
      List<ContributorItemModel> contributors});
}

/// @nodoc
class __$$RepoDetailModelImplCopyWithImpl<$Res>
    extends _$RepoDetailModelCopyWithImpl<$Res, _$RepoDetailModelImpl>
    implements _$$RepoDetailModelImplCopyWith<$Res> {
  __$$RepoDetailModelImplCopyWithImpl(
      _$RepoDetailModelImpl _value, $Res Function(_$RepoDetailModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? language = null,
    Object? sshUrl = null,
    Object? starCountText = null,
    Object? contributors = null,
  }) {
    return _then(_$RepoDetailModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      sshUrl: null == sshUrl
          ? _value.sshUrl
          : sshUrl // ignore: cast_nullable_to_non_nullable
              as String,
      starCountText: null == starCountText
          ? _value.starCountText
          : starCountText // ignore: cast_nullable_to_non_nullable
              as String,
      contributors: null == contributors
          ? _value._contributors
          : contributors // ignore: cast_nullable_to_non_nullable
              as List<ContributorItemModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RepoDetailModelImpl
    with DiagnosticableTreeMixin
    implements _RepoDetailModel {
  const _$RepoDetailModelImpl(
      {required this.name,
      required this.description,
      required this.language,
      required this.sshUrl,
      required this.starCountText,
      required final List<ContributorItemModel> contributors})
      : _contributors = contributors;

  factory _$RepoDetailModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RepoDetailModelImplFromJson(json);

  @override
  final String name;
  @override
  final String description;
  @override
  final String language;
  @override
  final String sshUrl;
  @override
  final String starCountText;
  final List<ContributorItemModel> _contributors;
  @override
  List<ContributorItemModel> get contributors {
    if (_contributors is EqualUnmodifiableListView) return _contributors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_contributors);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RepoDetailModel(name: $name, description: $description, language: $language, sshUrl: $sshUrl, starCountText: $starCountText, contributors: $contributors)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RepoDetailModel'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('language', language))
      ..add(DiagnosticsProperty('sshUrl', sshUrl))
      ..add(DiagnosticsProperty('starCountText', starCountText))
      ..add(DiagnosticsProperty('contributors', contributors));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RepoDetailModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.sshUrl, sshUrl) || other.sshUrl == sshUrl) &&
            (identical(other.starCountText, starCountText) ||
                other.starCountText == starCountText) &&
            const DeepCollectionEquality()
                .equals(other._contributors, _contributors));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      description,
      language,
      sshUrl,
      starCountText,
      const DeepCollectionEquality().hash(_contributors));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RepoDetailModelImplCopyWith<_$RepoDetailModelImpl> get copyWith =>
      __$$RepoDetailModelImplCopyWithImpl<_$RepoDetailModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RepoDetailModelImplToJson(
      this,
    );
  }
}

abstract class _RepoDetailModel implements RepoDetailModel {
  const factory _RepoDetailModel(
          {required final String name,
          required final String description,
          required final String language,
          required final String sshUrl,
          required final String starCountText,
          required final List<ContributorItemModel> contributors}) =
      _$RepoDetailModelImpl;

  factory _RepoDetailModel.fromJson(Map<String, dynamic> json) =
      _$RepoDetailModelImpl.fromJson;

  @override
  String get name;
  @override
  String get description;
  @override
  String get language;
  @override
  String get sshUrl;
  @override
  String get starCountText;
  @override
  List<ContributorItemModel> get contributors;
  @override
  @JsonKey(ignore: true)
  _$$RepoDetailModelImplCopyWith<_$RepoDetailModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
