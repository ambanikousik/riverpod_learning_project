// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sub_cat_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SubCatState {
  List<SubCategoryModel> get subCategories =>
      throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SubCatStateCopyWith<SubCatState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubCatStateCopyWith<$Res> {
  factory $SubCatStateCopyWith(
          SubCatState value, $Res Function(SubCatState) then) =
      _$SubCatStateCopyWithImpl<$Res, SubCatState>;
  @useResult
  $Res call({List<SubCategoryModel> subCategories, bool loading, String error});
}

/// @nodoc
class _$SubCatStateCopyWithImpl<$Res, $Val extends SubCatState>
    implements $SubCatStateCopyWith<$Res> {
  _$SubCatStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subCategories = null,
    Object? loading = null,
    Object? error = null,
  }) {
    return _then(_value.copyWith(
      subCategories: null == subCategories
          ? _value.subCategories
          : subCategories // ignore: cast_nullable_to_non_nullable
              as List<SubCategoryModel>,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SubCatStateCopyWith<$Res>
    implements $SubCatStateCopyWith<$Res> {
  factory _$$_SubCatStateCopyWith(
          _$_SubCatState value, $Res Function(_$_SubCatState) then) =
      __$$_SubCatStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<SubCategoryModel> subCategories, bool loading, String error});
}

/// @nodoc
class __$$_SubCatStateCopyWithImpl<$Res>
    extends _$SubCatStateCopyWithImpl<$Res, _$_SubCatState>
    implements _$$_SubCatStateCopyWith<$Res> {
  __$$_SubCatStateCopyWithImpl(
      _$_SubCatState _value, $Res Function(_$_SubCatState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subCategories = null,
    Object? loading = null,
    Object? error = null,
  }) {
    return _then(_$_SubCatState(
      subCategories: null == subCategories
          ? _value._subCategories
          : subCategories // ignore: cast_nullable_to_non_nullable
              as List<SubCategoryModel>,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SubCatState implements _SubCatState {
  const _$_SubCatState(
      {required final List<SubCategoryModel> subCategories,
      required this.loading,
      required this.error})
      : _subCategories = subCategories;

  final List<SubCategoryModel> _subCategories;
  @override
  List<SubCategoryModel> get subCategories {
    if (_subCategories is EqualUnmodifiableListView) return _subCategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subCategories);
  }

  @override
  final bool loading;
  @override
  final String error;

  @override
  String toString() {
    return 'SubCatState(subCategories: $subCategories, loading: $loading, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SubCatState &&
            const DeepCollectionEquality()
                .equals(other._subCategories, _subCategories) &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_subCategories), loading, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SubCatStateCopyWith<_$_SubCatState> get copyWith =>
      __$$_SubCatStateCopyWithImpl<_$_SubCatState>(this, _$identity);
}

abstract class _SubCatState implements SubCatState {
  const factory _SubCatState(
      {required final List<SubCategoryModel> subCategories,
      required final bool loading,
      required final String error}) = _$_SubCatState;

  @override
  List<SubCategoryModel> get subCategories;
  @override
  bool get loading;
  @override
  String get error;
  @override
  @JsonKey(ignore: true)
  _$$_SubCatStateCopyWith<_$_SubCatState> get copyWith =>
      throw _privateConstructorUsedError;
}
