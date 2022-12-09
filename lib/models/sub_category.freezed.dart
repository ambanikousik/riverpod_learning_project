// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sub_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SubCategoryModel {
  String get title => throw _privateConstructorUsedError;
  String get subTitle => throw _privateConstructorUsedError;
  int get popularity => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SubCategoryModelCopyWith<SubCategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubCategoryModelCopyWith<$Res> {
  factory $SubCategoryModelCopyWith(
          SubCategoryModel value, $Res Function(SubCategoryModel) then) =
      _$SubCategoryModelCopyWithImpl<$Res, SubCategoryModel>;
  @useResult
  $Res call({String title, String subTitle, int popularity});
}

/// @nodoc
class _$SubCategoryModelCopyWithImpl<$Res, $Val extends SubCategoryModel>
    implements $SubCategoryModelCopyWith<$Res> {
  _$SubCategoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? subTitle = null,
    Object? popularity = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subTitle: null == subTitle
          ? _value.subTitle
          : subTitle // ignore: cast_nullable_to_non_nullable
              as String,
      popularity: null == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SubCategoryModelCopyWith<$Res>
    implements $SubCategoryModelCopyWith<$Res> {
  factory _$$_SubCategoryModelCopyWith(
          _$_SubCategoryModel value, $Res Function(_$_SubCategoryModel) then) =
      __$$_SubCategoryModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String subTitle, int popularity});
}

/// @nodoc
class __$$_SubCategoryModelCopyWithImpl<$Res>
    extends _$SubCategoryModelCopyWithImpl<$Res, _$_SubCategoryModel>
    implements _$$_SubCategoryModelCopyWith<$Res> {
  __$$_SubCategoryModelCopyWithImpl(
      _$_SubCategoryModel _value, $Res Function(_$_SubCategoryModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? subTitle = null,
    Object? popularity = null,
  }) {
    return _then(_$_SubCategoryModel(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subTitle: null == subTitle
          ? _value.subTitle
          : subTitle // ignore: cast_nullable_to_non_nullable
              as String,
      popularity: null == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_SubCategoryModel implements _SubCategoryModel {
  const _$_SubCategoryModel(
      {required this.title, required this.subTitle, required this.popularity});

  @override
  final String title;
  @override
  final String subTitle;
  @override
  final int popularity;

  @override
  String toString() {
    return 'SubCategoryModel(title: $title, subTitle: $subTitle, popularity: $popularity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SubCategoryModel &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.subTitle, subTitle) ||
                other.subTitle == subTitle) &&
            (identical(other.popularity, popularity) ||
                other.popularity == popularity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, subTitle, popularity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SubCategoryModelCopyWith<_$_SubCategoryModel> get copyWith =>
      __$$_SubCategoryModelCopyWithImpl<_$_SubCategoryModel>(this, _$identity);
}

abstract class _SubCategoryModel implements SubCategoryModel {
  const factory _SubCategoryModel(
      {required final String title,
      required final String subTitle,
      required final int popularity}) = _$_SubCategoryModel;

  @override
  String get title;
  @override
  String get subTitle;
  @override
  int get popularity;
  @override
  @JsonKey(ignore: true)
  _$$_SubCategoryModelCopyWith<_$_SubCategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}
