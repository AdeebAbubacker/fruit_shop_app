import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fruit_shop_app/core/service/auth/auth_service.dart';

part 'register_event.dart';
part 'register_state.dart';
part 'register_bloc.freezed.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final AuthService authService;
  RegisterBloc(this.authService) : super(_Initial()) {
    on<_RegisterEvent>((event, emit) async {
      emit(const RegisterState.loading());

      try {
        final result = await authService.register(event.email, event.password);

        await result.fold((failure) async {
          emit(RegisterState.registerFailure(error: failure.toString()));
        }, (success) async {
          // var accessToken = await SetSharedPreferences.storeAccessToken(
          //         success.misc.accessToken) ??
          //     'Access Token empty';
          emit(RegisterState.registerSuccess(user: success!));
        });
      } catch (e) {
        emit(RegisterState.registerFailure(error: 'An error occurred: $e'));
      }
    });
  }
}
