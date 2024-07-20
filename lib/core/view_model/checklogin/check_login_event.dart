part of 'check_login_bloc.dart';

@freezed
class CheckLoginEvent with _$CheckLoginEvent {
  const factory CheckLoginEvent.started() = _Started;
  const factory CheckLoginEvent.isLoggedIn() = _isLoggedIn;
}
