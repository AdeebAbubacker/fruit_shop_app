part of 'get_fresh_fruit_bloc.dart';

@freezed
class GetFreshFruitState with _$GetFreshFruitState {

   const factory GetFreshFruitState.initial() = _Initial;
  const factory GetFreshFruitState.loading() = _Loading;
  const factory GetFreshFruitState.dataLoaded(
      {required List<Item> items}) = _GetFreshFruitLoaded;
  const factory GetFreshFruitState.error({required bool error}) = GetExoticError;
}
