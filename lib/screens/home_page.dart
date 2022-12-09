import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_learning_project/providers/counter/counter_provider.dart';
import 'package:riverpod_learning_project/screens/category_list_page.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final state = ref.watch(counterProvider);
    final counter = useState(0);
    final titleController = useTextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text(state.appbarTitle),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox.shrink(),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  state.body,
                ),
                Text(
                  '${counter.value}',
                  style: Theme.of(context).textTheme.headline4,
                ),
              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: titleController,
                  // onChanged: (text) {
                  //   ref.read(counterProvider.notifier).changeTitle(text);
                  // },
                  decoration: const InputDecoration(hintText: "Write title"),
                ),
              ),
              IconButton(
                  onPressed: () {
                    ref
                        .read(counterProvider.notifier)
                        .changeTitle(titleController.text);
                  },
                  icon: const Icon(Icons.save))
            ],
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => CategoryListPage()));
            },
            child: const Text('Lets go'),
          )
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            onPressed: () {
              counter.value = counter.value + 1;
              // ref.read(counterProvider.notifier).increment();
            },
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: () {
              counter.value = counter.value - 1;
            },
            tooltip: 'Decrement',
            child: const Icon(Icons.subtitles_rounded),
          ),
          FloatingActionButton(
            onPressed: () {
              ref.read(counterProvider.notifier).changeBody(
                  "Current value is ${state.counter}, and tap to change value");
            },
            tooltip: 'Decrement',
            child: const Icon(Icons.padding),
          ),
        ],
      ),
    );
  }
}
