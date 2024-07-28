part of 'get_leafs_n_herb_bloc.dart';

@freezed
class GetLeafsnHerbState with _$GetLeafsnHerbState {

   const factory GetLeafsnHerbState.initial() = _Initial;
  const factory GetLeafsnHerbState.loading() = _Loading;
  const factory GetLeafsnHerbState.dataLoaded(
      {required List<Item> items}) = _GetLeafsnHerbLoaded;
  const factory GetLeafsnHerbState.error({required bool error}) = GetExoticError;
}
