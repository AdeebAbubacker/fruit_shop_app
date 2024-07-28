part of 'get_fresh_mango_bloc.dart';

@freezed
class GetFreshMangoEvent with _$GetFreshMangoEvent {
  const factory GetFreshMangoEvent.started() = _Started;
  const factory GetFreshMangoEvent.getFreshMango() = _GetFreshMango;
}