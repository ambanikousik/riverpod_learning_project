import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_learning_project/models/category.dart';
import 'package:riverpod_learning_project/providers/category/sub_cat_provider.dart';

class SubCategoryListPage extends HookConsumerWidget {
  final CategoryModel category;
  const SubCategoryListPage({super.key, required this.category});

  @override
  Widget build(BuildContext context, ref) {
    final subCategoryState = ref.watch(subCategoryProvider(category));

    useEffect(() {
      Future.delayed(const Duration(milliseconds: 100), () {
        ref.read(subCategoryProvider(category).notifier).loadData();
      });
      return null;
    }, []);

    ref.listen(subCategoryProvider(category), (previous, next) {
      if (!next.loading && next.error.isNotEmpty) {
        showDialog(
            context: context,
            builder: (context) => AlertDialog(
                  title: const Text("Error"),
                  content: Text(next.error),
                ));
      }
    });
    return Scaffold(
      appBar: AppBar(
        title: const Text("Subcategory page"),
        actions: [
          IconButton(
              onPressed: () {
                ref.read(subCategoryProvider(category).notifier).refesh();
              },
              icon: const Icon(Icons.refresh))
        ],
      ),
      body: subCategoryState.loading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : subCategoryState.subCategories.isEmpty
              ? const Center(
                  child: Text('No item available, please refresh'),
                )
              : ListView.builder(
                  itemCount: subCategoryState.subCategories.length,
                  itemBuilder: (context, index) {
                    final subCat = subCategoryState.subCategories[index];
                    return ListTile(
                      title: Text(subCat.title),
                      subtitle:
                          Text('${subCat.subTitle}\n${subCat.popularity}'),
                    );
                  }),
    );
  }
}
