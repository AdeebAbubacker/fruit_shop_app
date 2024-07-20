import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fruit_shop_app/core/service/auth/auth_service.dart';

part 'logout_event.dart';
part 'logout_state.dart';
part 'logout_bloc.freezed.dart';

class LogoutBloc extends Bloc<LogoutEvent, LogoutState> {
  final AuthService authService;
  LogoutBloc(this.authService) : super(const LogoutState.initial()) {
    on<_Logout>((event, emit) async {
      emit(const LogoutState.loading());

      try {
        final result = await authService.logout();

        await result.fold((failure) async {
          emit(LogoutState.userNotlogout(Notloggedout: failure));
        }, (success) async {
          emit(LogoutState.userlogout(loggedout: success));
        });
      } catch (e) {
        emit(const LogoutState.userNotlogout(Notloggedout: false));
      }
    });
  }
}
