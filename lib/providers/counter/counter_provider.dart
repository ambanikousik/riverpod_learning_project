import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'home_state.dart';

final counterProvider =
    StateNotifierProvider<CounterNotifier, HomeState>((ref) {
  return CounterNotifier();
});

class CounterNotifier extends StateNotifier<HomeState> {
  CounterNotifier() : super(HomeState.init());

  increment() {
    final oldState = state;
    state = oldState.copyWith(counter: oldState.counter + 1);
  }

  decrement() {
    final oldState = state;
    state = oldState.copyWith(counter: oldState.counter - 1);
  }

  changeTitle(String newTitle) {
    state = state.copyWith(appbarTitle: newTitle);
  }

  changeBody(String newBody) {
    state = state.copyWith(body: newBody);
  }
}
