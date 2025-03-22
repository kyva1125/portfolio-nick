import 'package:freezed_annotation/freezed_annotation.dart';


part 'home_state.freezed.dart';

@freezed
abstract class HomeState with _$HomeState {
  const HomeState._();

  const factory HomeState(
  ) = _HomeState;

  static HomeState get initialState => const HomeState();



}