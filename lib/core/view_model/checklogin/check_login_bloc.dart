import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fruit_shop_app/core/service/auth/auth_service.dart';

part 'check_login_event.dart';
part 'check_login_state.dart';
part 'check_login_bloc.freezed.dart';

class CheckLoginBloc extends Bloc<CheckLoginEvent, CheckLoginState> {
  final AuthService authService;
  CheckLoginBloc(this.authService) : super(CheckLoginState.initial()) {
    on<_isLoggedIn>((event, emit) async {
      emit(const CheckLoginState.loading());

      try {
        final result = await authService.isUserSignedIn();

        await result.fold((failure) async {
          emit(CheckLoginState.NotLogedIn(error: failure));
        }, (success) async {
          // var accessToken = await SetSharedPreferences.storeAccessToken(
          //         success.misc.accessToken) ??
          //     'Access Token empty';
          emit(CheckLoginState.LogedIn(user: success));
        });
      } catch (e) {
        emit(CheckLoginState.NotLogedIn(error: false));
      }
    });
  }
}
