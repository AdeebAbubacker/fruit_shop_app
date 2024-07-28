part of 'get_leafs_n_herb_bloc.dart';

@freezed
class GetLeafsnHerbEvent with _$GetLeafsnHerbEvent {
  const factory GetLeafsnHerbEvent.started() = _Started;
  const factory GetLeafsnHerbEvent.getLeafsnHerbs() = _GetLeafsnHerbs;
}