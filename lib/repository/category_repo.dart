import 'dart:math';

import 'package:riverpod_learning_project/models/category.dart';
import 'package:riverpod_learning_project/models/sub_category.dart';

class CategoryRepo {
  static Future<List<CategoryModel>> getCategoris() async {
    await Future.delayed(const Duration(seconds: 2));

    final int x = Random().nextInt(100);

    return [
      CategoryModel(title: 'Dart', subTitle: "New language $x"),
      CategoryModel(title: 'C', subTitle: "Old language $x"),
      CategoryModel(title: 'Python', subTitle: "Popular language $x")
    ];
  }

  static Future<List<SubCategoryModel>> getSubCategoris(
      CategoryModel category) async {
    await Future.delayed(const Duration(seconds: 5));
    final int x = Random().nextInt(100);

    if (x % 2 == 0) {
      print("throwing error $x");
      throw "Something went wrong $x";
    }
    return [
      SubCategoryModel(
          title: 'FrameWork 1',
          subTitle: "subcategory of ${category.title}",
          popularity: x),
      SubCategoryModel(
          title: 'FrameWork 2',
          subTitle: "subcategory of ${category.title}",
          popularity: x),
      SubCategoryModel(
          title: 'FrameWork 3',
          subTitle: "subcategory of ${category.title}",
          popularity: x)
    ];
  }
}
