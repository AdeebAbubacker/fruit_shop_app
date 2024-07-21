import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fruit_shop_app/core/model/home_item/home_item.dart';
import 'package:fruit_shop_app/core/service/home/home_screen_service.dart';

part 'get_check_thisitem_event.dart';
part 'get_check_thisitem_state.dart';
part 'get_check_thisitem_bloc.freezed.dart';

class GetCheckThisitemBloc extends Bloc<GetCheckThisitemEvent, GetCheckThisitemState> {
  final HomeScreenService homeScreenService;
  GetCheckThisitemBloc(this.homeScreenService) : super(_Initial()) {
      on<_GetCheckThisItem>((event, emit) async {
      emit(const GetCheckThisitemState.loading());

      try {
        final result = await homeScreenService.getCheckThisItem();

        await result.fold((failure) async {
          emit(const GetCheckThisitemState.error(error: false));
        }, (success) async {
          emit(GetCheckThisitemState.dataLoaded(items: success));
        });
      } catch (e) {
        emit(const GetCheckThisitemState.error(error: false));
      }
    });
  }
}
