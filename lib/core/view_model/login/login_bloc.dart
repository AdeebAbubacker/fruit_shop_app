import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fruit_shop_app/core/service/auth/auth_service.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginState.initial()) {
    AuthService authService = AuthService(FirebaseAuth.instance);
    on<_LoginRequested>((event, emit) async {
      emit(LoginState.loading());
      final result = await authService.login(event.email, event.password);
      result.fold((failure) => LoginFailure(error: failure),
          (success) => LoginState.loginSuccess(user: success!));
    });
  }
}
