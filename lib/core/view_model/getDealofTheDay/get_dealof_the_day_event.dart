part of 'get_dealof_the_day_bloc.dart';

@freezed
class GetDealofTheDayEvent with _$GetDealofTheDayEvent {
  const factory GetDealofTheDayEvent.started() = _Started;
  const factory GetDealofTheDayEvent.getDealofTheDay() = _GetDealofTheDay;
}