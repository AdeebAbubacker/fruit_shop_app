import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fruit_shop_app/core/model/home_item/home_item.dart';
import 'package:fruit_shop_app/core/service/home/home_screen_service.dart';

part 'get_leafs_n_herb_event.dart';
part 'get_leafs_n_herb_state.dart';
part 'get_leafs_n_herb_bloc.freezed.dart';

class GetLeafsandHerbsBloc
    extends Bloc<GetLeafsnHerbEvent, GetLeafsnHerbState> {
  final HomeScreenService homeScreenService;
  GetLeafsandHerbsBloc(this.homeScreenService)
      : super(GetLeafsnHerbState.initial()) {
    on<_GetLeafsnHerbs>((event, emit) async {
      emit(const GetLeafsnHerbState.loading());

      try {
        final result = await homeScreenService.getLeafsandHerbs();

        await result.fold((failure) async {
          emit(const GetLeafsnHerbState.error(error: false));
        }, (success) async {
          print(success[0].name.toLowerCase());
          emit(GetLeafsnHerbState.dataLoaded(items: success));
        });
      } catch (e) {
        emit(const GetLeafsnHerbState.error(error: false));
      }
    });
  }
}
