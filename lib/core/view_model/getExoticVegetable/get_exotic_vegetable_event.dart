part of 'get_exotic_vegetable_bloc.dart';

@freezed
class GetExoticVegetableEvent with _$GetExoticVegetableEvent {
  const factory GetExoticVegetableEvent.started() = _Started;
  const factory GetExoticVegetableEvent.getExoticVegetable() = _GetExoticVegetable;
}