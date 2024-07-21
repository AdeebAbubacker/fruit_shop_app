part of 'get_every_day_essential_bloc.dart';

@freezed
class GetEveryDayEssentialState with _$GetEveryDayEssentialState {
  const factory GetEveryDayEssentialState.initial() = _Initial;
  const factory GetEveryDayEssentialState.loading() = _Loading;
  const factory GetEveryDayEssentialState.dataLoaded(
      {required List<Item> items}) = _GetEveryDayEssentialLoaded;
  const factory GetEveryDayEssentialState.error({required bool error}) = GetEveryDayEssentialError;
}
