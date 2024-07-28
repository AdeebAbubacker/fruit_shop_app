part of 'get_exotic_vegetable_bloc.dart';

@freezed
class GetExoticVegetableState with _$GetExoticVegetableState {

   const factory GetExoticVegetableState.initial() = _Initial;
  const factory GetExoticVegetableState.loading() = _Loading;
  const factory GetExoticVegetableState.dataLoaded(
      {required List<Item> items}) = _GetExoticVegtableLoaded;
  const factory GetExoticVegetableState.error({required bool error}) = GetExoticError;
}
