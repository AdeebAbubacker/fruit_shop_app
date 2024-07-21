part of 'homescreen_bloc.dart';

@freezed
class HomescreenEvent with _$HomescreenEvent {
  const factory HomescreenEvent.started() = _Started;
   const factory HomescreenEvent.getEssentialItems() = _GetEssentialItems;
}