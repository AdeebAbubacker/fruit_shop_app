part of 'check_login_bloc.dart';

@freezed
class CheckLoginState with _$CheckLoginState {
  const factory CheckLoginState.initial() = _Initial;
    const factory CheckLoginState.loading() = _Loading;
  const factory CheckLoginState.LogedIn({required bool user}) = _LogedIn;
  const factory CheckLoginState.NotLogedIn({required bool error}) = _NotLogedIn;
}
