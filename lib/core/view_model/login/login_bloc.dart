import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fruit_shop_app/core/service/auth/auth_service.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthService authService;
  LoginBloc(this.authService) : super(const LoginState.initial()) {
    on<_LoginRequested>((event, emit) async {
      emit(const LoginState.loading());

      try {
        final result = await authService.login(event.email, event.password);

        await result.fold((failure) async {
          emit(LoginState.loginFailure(error: failure.toString()));
        }, (success) async {
          // var accessToken = await SetSharedPreferences.storeAccessToken(
          //         success.misc.accessToken) ??
          //     'Access Token empty';
          emit(LoginState.loginSuccess(user: success!));
        });
      } catch (e) {
        emit(LoginState.loginFailure(error: 'An error occurred: $e'));
      }
    });
  }
}
