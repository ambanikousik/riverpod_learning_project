import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState(
      {required String appbarTitle,
      required String body,
      required int counter}) = _HomeState;

  factory HomeState.init() => const HomeState(
      appbarTitle: "Test App", body: "Tap to count", counter: 0);
}
