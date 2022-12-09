import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_learning_project/providers/category/category_provider.dart';
import 'package:riverpod_learning_project/screens/sub_category_list.page.dart';

class CategoryListPage extends ConsumerWidget {
  const CategoryListPage({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final categoryState = ref.watch(categoryProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Category List"),
        actions: [
          IconButton(
              onPressed: () {
                // ignore: unused_result
                ref.refresh(categoryProvider);
              },
              icon: const Icon(Icons.refresh))
        ],
      ),
      body: categoryState.when(
          data: (data) => ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) => ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  SubCategoryListPage(category: data[index])));
                    },
                    title: Text(data[index].title),
                    subtitle: Text(data[index].subTitle),
                  )),
          error: (error, _) => Center(
                child: Text(error.toString()),
              ),
          loading: () => const Center(
                child: CircularProgressIndicator(),
              )),
    );
  }
}
