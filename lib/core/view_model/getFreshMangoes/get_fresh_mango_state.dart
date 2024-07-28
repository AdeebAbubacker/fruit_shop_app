part of 'get_fresh_mango_bloc.dart';

@freezed
class GetFreshMangoState with _$GetFreshMangoState {

   const factory GetFreshMangoState.initial() = _Initial;
  const factory GetFreshMangoState.loading() = _Loading;
  const factory GetFreshMangoState.dataLoaded(
      {required List<Item> items}) = _GetFreshMangoLoaded;
  const factory GetFreshMangoState.error({required bool error}) = GetExoticError;
}
