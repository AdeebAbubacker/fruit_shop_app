part of 'get_exotic_fruit_bloc.dart';

@freezed
class GetExoticFruitState with _$GetExoticFruitState {

   const factory GetExoticFruitState.initial() = _Initial;
  const factory GetExoticFruitState.loading() = _Loading;
  const factory GetExoticFruitState.dataLoaded(
      {required List<Item> items}) = _GetExoticFruitLoaded;
  const factory GetExoticFruitState.error({required bool error}) = GetExoticError;
}
