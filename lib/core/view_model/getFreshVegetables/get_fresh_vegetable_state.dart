part of 'get_fresh_vegetable_bloc.dart';

@freezed
class GetFreshVegetableState with _$GetFreshVegetableState {

   const factory GetFreshVegetableState.initial() = _Initial;
  const factory GetFreshVegetableState.loading() = _Loading;
  const factory GetFreshVegetableState.dataLoaded(
      {required List<Item> items}) = _GetFreshVegetableLoaded;
  const factory GetFreshVegetableState.error({required bool error}) = GetExoticError;
}
