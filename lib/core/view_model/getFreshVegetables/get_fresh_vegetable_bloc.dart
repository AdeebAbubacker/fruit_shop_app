import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fruit_shop_app/core/model/home_item/home_item.dart';
import 'package:fruit_shop_app/core/service/home/home_screen_service.dart';

part 'get_fresh_vegetable_event.dart';
part 'get_fresh_vegetable_state.dart';
part 'get_fresh_vegetable_bloc.freezed.dart';

class GetFreshVegetableBloc
    extends Bloc<GetFreshVegetableEvent, GetFreshVegetableState> {
  final HomeScreenService homeScreenService;
  GetFreshVegetableBloc(this.homeScreenService)
      : super(GetFreshVegetableState.initial()) {
    on<_GetFreshVegetable>((event, emit) async {
      emit(const GetFreshVegetableState.loading());

      try {
        final result = await homeScreenService.getFreshMangoes();

        await result.fold((failure) async {
          emit(const GetFreshVegetableState.error(error: false));
        }, (success) async {
          print(success[0].name.toLowerCase());
          emit(GetFreshVegetableState.dataLoaded(items: success));
        });
      } catch (e) {
        emit(const GetFreshVegetableState.error(error: false));
      }
    });
  }
}
