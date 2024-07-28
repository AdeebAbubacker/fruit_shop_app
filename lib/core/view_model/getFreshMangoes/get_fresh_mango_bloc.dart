import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fruit_shop_app/core/model/home_item/home_item.dart';
import 'package:fruit_shop_app/core/service/home/home_screen_service.dart';

part 'get_fresh_mango_event.dart';
part 'get_fresh_mango_state.dart';
part 'get_fresh_mango_bloc.freezed.dart';

class GetFreshMangoBloc
    extends Bloc<GetFreshMangoEvent, GetFreshMangoState> {
  final HomeScreenService homeScreenService;
  GetFreshMangoBloc(this.homeScreenService)
      : super(GetFreshMangoState.initial()) {
    on<_GetFreshMango>((event, emit) async {
      emit(const GetFreshMangoState.loading());

      try {
        final result = await homeScreenService.getFreshMangoes();

        await result.fold((failure) async {
          emit(const GetFreshMangoState.error(error: false));
        }, (success) async {
          print(success[0].name.toLowerCase());
          emit(GetFreshMangoState.dataLoaded(items: success));
        });
      } catch (e) {
        emit(const GetFreshMangoState.error(error: false));
      }
    });
  }
}
