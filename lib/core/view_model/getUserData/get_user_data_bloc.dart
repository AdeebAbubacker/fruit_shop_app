import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fruit_shop_app/core/model/user/user_model.dart';
import 'package:fruit_shop_app/core/service/auth/auth_service.dart';

part 'get_user_data_event.dart';
part 'get_user_data_state.dart';
part 'get_user_data_bloc.freezed.dart';


class GetUserDataBloc extends Bloc<GetUserDataEvent, GetUserDataState> {
  final AuthService authService;
  GetUserDataBloc(this.authService) : super(const GetUserDataState.initial()) {
    on<_GetUserData>((event, emit) async {
      emit(const GetUserDataState.loading());

      try {
        final result = await authService.getUserData();

        await result.fold((failure) async {
          emit(const GetUserDataState.error(error: false));
        }, (success) async {
          emit(GetUserDataState.dataLoaded(items: success));
        });
      } catch (e) {
        emit(const GetUserDataState.error(error: false));
      }
    });
  }
}
