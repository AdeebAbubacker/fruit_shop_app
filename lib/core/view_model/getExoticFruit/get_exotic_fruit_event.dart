part of 'get_exotic_fruit_bloc.dart';

@freezed
class GetExoticFruitEvent with _$GetExoticFruitEvent {
  const factory GetExoticFruitEvent.started() = _Started;
  const factory GetExoticFruitEvent.getExoticfruit() = _GetExoticfruit;
}