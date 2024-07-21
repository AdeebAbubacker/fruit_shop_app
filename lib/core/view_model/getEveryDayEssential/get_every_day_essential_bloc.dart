import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fruit_shop_app/core/model/home_item/home_item.dart';
import 'package:fruit_shop_app/core/service/home/home_screen_service.dart';

part 'get_every_day_essential_event.dart';
part 'get_every_day_essential_state.dart';
part 'get_every_day_essential_bloc.freezed.dart';

class GetEveryDayEssentialBloc
    extends Bloc<GetEveryDayEssentialEvent, GetEveryDayEssentialState> {
  final HomeScreenService homeScreenService;
  GetEveryDayEssentialBloc(this.homeScreenService) : super(_Initial()) {
    on<_GetEveryDayEssential>((event, emit) async {
      emit(const GetEveryDayEssentialState.loading());

      try {
        final result = await homeScreenService.getEveryDayEssential();

        await result.fold((failure) async {
          emit(const GetEveryDayEssentialState.error(error: false));
        }, (success) async {
          emit(GetEveryDayEssentialState.dataLoaded(items: success));
        });
      } catch (e) {
        emit(const GetEveryDayEssentialState.error(error: false));
      }
    });
  }
}
