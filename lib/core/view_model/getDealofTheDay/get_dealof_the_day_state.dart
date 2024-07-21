part of 'get_dealof_the_day_bloc.dart';

@freezed
class GetDealofTheDayState with _$GetDealofTheDayState {

    const factory GetDealofTheDayState.initial() = _Initial;
  const factory GetDealofTheDayState.loading() = _Loading;
  const factory GetDealofTheDayState.dataLoaded(
      {required List<Item> items}) = _GetDealofTheDayLoaded;
  const factory GetDealofTheDayState.error({required bool error}) = GetDealofTheDayError;

}
