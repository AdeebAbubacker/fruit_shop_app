part of 'register_bloc.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState.initial() = _Initial;
  const factory RegisterState.loading() = _Loading;
  const factory RegisterState.registerSuccess({required User user}) =
      _RegisterSuccess;
  const factory RegisterState.registerFailure({required String error}) =
      RegisterFailure;
}
