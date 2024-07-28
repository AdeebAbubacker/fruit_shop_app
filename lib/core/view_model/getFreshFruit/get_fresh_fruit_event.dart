part of 'get_fresh_fruit_bloc.dart';

@freezed
class GetFreshFruitEvent with _$GetFreshFruitEvent {
  const factory GetFreshFruitEvent.started() = _Started;
  const factory GetFreshFruitEvent.getFreshFruit() = _GetFreshFruit;
}