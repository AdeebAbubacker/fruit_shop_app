part of 'get_fresh_vegetable_bloc.dart';

@freezed
class GetFreshVegetableEvent with _$GetFreshVegetableEvent {
  const factory GetFreshVegetableEvent.started() = _Started;
  const factory GetFreshVegetableEvent.getFreshVegetable() = _GetFreshVegetable;
}