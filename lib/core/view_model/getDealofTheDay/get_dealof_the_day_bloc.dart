import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fruit_shop_app/core/model/home_item/home_item.dart';
import 'package:fruit_shop_app/core/service/home/home_screen_service.dart';

part 'get_dealof_the_day_event.dart';
part 'get_dealof_the_day_state.dart';
part 'get_dealof_the_day_bloc.freezed.dart';

class GetDealofTheDayBloc extends Bloc<GetDealofTheDayEvent, GetDealofTheDayState> {
    final HomeScreenService homeScreenService;
  GetDealofTheDayBloc(this.homeScreenService) : super(_Initial()) {
      on<_GetDealofTheDay>((event, emit) async {
      emit(const GetDealofTheDayState.loading());

      try {
        final result = await homeScreenService.getDealofTheDay();

        await result.fold((failure) async {
          emit(const GetDealofTheDayState.error(error: false));
        }, (success) async {
          emit(GetDealofTheDayState.dataLoaded(items: success));
        });
      } catch (e) {
        emit(const GetDealofTheDayState.error(error: false));
      }
    });
  }
}
