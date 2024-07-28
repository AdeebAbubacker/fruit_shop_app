import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fruit_shop_app/core/model/home_item/home_item.dart';
import 'package:fruit_shop_app/core/service/home/home_screen_service.dart';

part 'get_exotic_vegetable_event.dart';
part 'get_exotic_vegetable_state.dart';
part 'get_exotic_vegetable_bloc.freezed.dart';

class GetExoticVegetableBloc
    extends Bloc<GetExoticVegetableEvent, GetExoticVegetableState> {
  final HomeScreenService homeScreenService;
  GetExoticVegetableBloc(this.homeScreenService)
      : super(GetExoticVegetableState.initial()) {
    on<_GetExoticVegetable>((event, emit) async {
      emit(const GetExoticVegetableState.loading());

      try {
        final result = await homeScreenService.getExoticVegetable();

        await result.fold((failure) async {
          emit(const GetExoticVegetableState.error(error: false));
        }, (success) async {
          print(success[0].name.toLowerCase());
          emit(GetExoticVegetableState.dataLoaded(items: success));
        });
      } catch (e) {
        emit(const GetExoticVegetableState.error(error: false));
      }
    });
  }
}
