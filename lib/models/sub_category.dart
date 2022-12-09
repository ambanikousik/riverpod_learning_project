import 'package:freezed_annotation/freezed_annotation.dart';
part 'sub_category.freezed.dart';

@freezed
class SubCategoryModel with _$SubCategoryModel {
  const factory SubCategoryModel(
      {required String title,
      required String subTitle,
      required int popularity}) = _SubCategoryModel;
}
