import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_learning_project/models/category.dart';
import 'package:riverpod_learning_project/providers/category/sub_cat_state.dart';
import 'package:riverpod_learning_project/repository/category_repo.dart';

final subCategoryProvider = StateNotifierProvider.family<SubCategoryNotifier,
    SubCatState, CategoryModel>((ref, category) {
  return SubCategoryNotifier(category: category);
});

class SubCategoryNotifier extends StateNotifier<SubCatState> {
  final CategoryModel category;
  SubCategoryNotifier({required this.category}) : super(SubCatState.init());

  loadData() async {
    state = state.copyWith(loading: true);
    try {
      final data = await CategoryRepo.getSubCategoris(category);

      state = state.copyWith(loading: false, subCategories: data);
    } catch (e) {
      state = state.copyWith(loading: false, error: e.toString());
    }
  }

  refesh() async {
    try {
      final data = await CategoryRepo.getSubCategoris(category);

      state = state.copyWith(subCategories: data);
    } catch (e) {
      print("caught error $e");
      state = state.copyWith(error: e.toString());
    }
  }
}
