import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fruit_shop_app/core/service/cart/cart_service.dart';

part 'update_event.dart';
part 'update_cart_state.dart';
part 'update_cart_bloc.freezed.dart';



class UpdateCartBloc extends Bloc<UpdateCartEvent, UpdateCartState> {
  final CartService cartService;
  UpdateCartBloc(this.cartService) : super(_Initial()) {
    on<_Add>((event, emit) async {
      emit(const UpdateCartState.loading());

      try {
        final result = await cartService.updateCartItem(
          itemId: event.itemId,
          quantity: event.quantity,
        );

        await result.fold((failure) async {
          emit(const UpdateCartState.error(error: false));
        }, (success) async {
          emit(UpdateCartState.dataLoaded(success: success));
        });
      } catch (e) {
        emit(const UpdateCartState.error(error: false));
      }
    });
  }
}
