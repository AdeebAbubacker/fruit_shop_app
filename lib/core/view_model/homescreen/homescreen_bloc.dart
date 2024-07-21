import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fruit_shop_app/core/model/home_item/home_item.dart';
import 'package:fruit_shop_app/core/service/home/home_screen_service.dart';

part 'homescreen_event.dart';
part 'homescreen_state.dart';
part 'homescreen_bloc.freezed.dart';


class HomescreenBloc extends Bloc<HomescreenEvent, HomescreenState> {
  final HomeScreenService homeScreenService;
  HomescreenBloc(this.homeScreenService)
      : super(const HomescreenState.initial()) {
    on<_GetEssentialItems>((event, emit) async {
      emit(const HomescreenState.loading());

      try {
        final result = await homeScreenService.getEssentialItems();

        await result.fold((failure) async {
          emit(const HomescreenState.error(error: false));
        }, (success) async {
          emit(HomescreenState.dataLoaded(items: success));
        });
      } catch (e) {
        emit(const HomescreenState.error(error: false));
      }
    });
  }
}
