import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_learning_project/models/category.dart';
import 'package:riverpod_learning_project/repository/category_repo.dart';

final categoryProvider = FutureProvider<List<CategoryModel>>((ref) async {
  return CategoryRepo.getCategoris();
});
