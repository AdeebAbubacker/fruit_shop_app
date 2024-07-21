part of 'get_every_day_essential_bloc.dart';

@freezed
class GetEveryDayEssentialEvent with _$GetEveryDayEssentialEvent {
  const factory GetEveryDayEssentialEvent.started() = _Started;
  const factory GetEveryDayEssentialEvent.getEveryDayEssential() = _GetEveryDayEssential;

}