import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fruit_shop_app/core/model/home_item/home_item.dart';
import 'package:fruit_shop_app/core/service/home/home_screen_service.dart';

part 'get_exotic_fruit_event.dart';
part 'get_exotic_fruit_state.dart';
part 'get_exotic_fruit_bloc.freezed.dart';

class GetExoticFruitBloc
    extends Bloc<GetExoticFruitEvent, GetExoticFruitState> {
  final HomeScreenService homeScreenService;
  GetExoticFruitBloc(this.homeScreenService)
      : super(GetExoticFruitState.initial()) {
    on<_GetExoticfruit>((event, emit) async {
      emit(const GetExoticFruitState.loading());

      try {
        final result = await homeScreenService.getExoticfruit();

        await result.fold((failure) async {
          emit(const GetExoticFruitState.error(error: false));
        }, (success) async {
          emit(GetExoticFruitState.dataLoaded(items: success));
        });
      } catch (e) {
        emit(const GetExoticFruitState.error(error: false));
      }
    });
  }
}
