part of 'get_user_data_bloc.dart';

@freezed
class GetUserDataEvent with _$GetUserDataEvent {
  const factory GetUserDataEvent.started() = _Started;
   const factory GetUserDataEvent.getUserData() = _GetUserData;
}