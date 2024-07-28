import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fruit_shop_app/core/model/home_item/home_item.dart';
import 'package:fruit_shop_app/core/service/home/home_screen_service.dart';

part 'get_fresh_fruit_event.dart';
part 'get_fresh_fruit_state.dart';
part 'get_fresh_fruit_bloc.freezed.dart';

class GetFreshFruitBloc
    extends Bloc<GetFreshFruitEvent, GetFreshFruitState> {
  final HomeScreenService homeScreenService;
  GetFreshFruitBloc(this.homeScreenService)
      : super(GetFreshFruitState.initial()) {
    on<_GetFreshFruit>((event, emit) async {
      emit(const GetFreshFruitState.loading());

      try {
        final result = await homeScreenService.getFreshFruit();

        await result.fold((failure) async {
          emit(const GetFreshFruitState.error(error: false));
        }, (success) async {
          print(success[0].name.toLowerCase());
          emit(GetFreshFruitState.dataLoaded(items: success));
        });
      } catch (e) {
        emit(const GetFreshFruitState.error(error: false));
      }
    });
  }
}
