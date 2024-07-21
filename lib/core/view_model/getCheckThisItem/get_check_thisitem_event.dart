part of 'get_check_thisitem_bloc.dart';

@freezed
class GetCheckThisitemEvent with _$GetCheckThisitemEvent {
  const factory GetCheckThisitemEvent.started() = _Started;
  const factory GetCheckThisitemEvent.getCheckThisItem() = _GetCheckThisItem;
}