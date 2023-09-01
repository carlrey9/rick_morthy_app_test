// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'character_additional_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CharacterAdditionalInfoModel _$CharacterAdditionalInfoModelFromJson(
    Map<String, dynamic> json) {
  return _CharacterAdditionalInfoModel.fromJson(json);
}

/// @nodoc
mixin _$CharacterAdditionalInfoModel {
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CharacterAdditionalInfoModelCopyWith<CharacterAdditionalInfoModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterAdditionalInfoModelCopyWith<$Res> {
  factory $CharacterAdditionalInfoModelCopyWith(
          CharacterAdditionalInfoModel value,
          $Res Function(CharacterAdditionalInfoModel) then) =
      _$CharacterAdditionalInfoModelCopyWithImpl<$Res,
          CharacterAdditionalInfoModel>;
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class _$CharacterAdditionalInfoModelCopyWithImpl<$Res,
        $Val extends CharacterAdditionalInfoModel>
    implements $CharacterAdditionalInfoModelCopyWith<$Res> {
  _$CharacterAdditionalInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CharacterAdditionalInfoModelCopyWith<$Res>
    implements $CharacterAdditionalInfoModelCopyWith<$Res> {
  factory _$$_CharacterAdditionalInfoModelCopyWith(
          _$_CharacterAdditionalInfoModel value,
          $Res Function(_$_CharacterAdditionalInfoModel) then) =
      __$$_CharacterAdditionalInfoModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class __$$_CharacterAdditionalInfoModelCopyWithImpl<$Res>
    extends _$CharacterAdditionalInfoModelCopyWithImpl<$Res,
        _$_CharacterAdditionalInfoModel>
    implements _$$_CharacterAdditionalInfoModelCopyWith<$Res> {
  __$$_CharacterAdditionalInfoModelCopyWithImpl(
      _$_CharacterAdditionalInfoModel _value,
      $Res Function(_$_CharacterAdditionalInfoModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_$_CharacterAdditionalInfoModel(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CharacterAdditionalInfoModel implements _CharacterAdditionalInfoModel {
  const _$_CharacterAdditionalInfoModel(
      {required this.name, required this.url});

  factory _$_CharacterAdditionalInfoModel.fromJson(Map<String, dynamic> json) =>
      _$$_CharacterAdditionalInfoModelFromJson(json);

  @override
  final String name;
  @override
  final String url;

  @override
  String toString() {
    return 'CharacterAdditionalInfoModel(name: $name, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CharacterAdditionalInfoModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CharacterAdditionalInfoModelCopyWith<_$_CharacterAdditionalInfoModel>
      get copyWith => __$$_CharacterAdditionalInfoModelCopyWithImpl<
          _$_CharacterAdditionalInfoModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CharacterAdditionalInfoModelToJson(
      this,
    );
  }
}

abstract class _CharacterAdditionalInfoModel
    implements CharacterAdditionalInfoModel {
  const factory _CharacterAdditionalInfoModel(
      {required final String name,
      required final String url}) = _$_CharacterAdditionalInfoModel;

  factory _CharacterAdditionalInfoModel.fromJson(Map<String, dynamic> json) =
      _$_CharacterAdditionalInfoModel.fromJson;

  @override
  String get name;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$_CharacterAdditionalInfoModelCopyWith<_$_CharacterAdditionalInfoModel>
      get copyWith => throw _privateConstructorUsedError;
}
