part of 'logout_bloc.dart';

@freezed
class LogoutState with _$LogoutState {
  const factory LogoutState.initial() = _Initial;
      const factory LogoutState.loading() = _Loading;
  const factory LogoutState.userlogout({required bool loggedout}) = UserLogout;
  const factory LogoutState.userNotlogout({required bool Notloggedout}) = UserNotlogout;
}
