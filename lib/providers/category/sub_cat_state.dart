import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_learning_project/models/sub_category.dart';

part 'sub_cat_state.freezed.dart';

@freezed
class SubCatState with _$SubCatState {
  const factory SubCatState(
      {required List<SubCategoryModel> subCategories,
      required bool loading,
      required String error}) = _SubCatState;

  factory SubCatState.init() =>
      const SubCatState(subCategories: [], loading: false, error: '');
}
