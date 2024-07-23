import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fruit_shop_app/core/model/cart_item/cart_item.dart';
import 'package:fruit_shop_app/core/service/cart/cart_service.dart';

part 'view_cart_event.dart';
part 'view_cart_state.dart';
part 'view_cart_bloc.freezed.dart';

class ViewCartBloc extends Bloc<ViewCartEvent, ViewCartState> {
   final CartService cartService;
  ViewCartBloc(this.cartService) : super(const _Initial()) {
          on<_Viewcart>((event, emit) async {
      emit(const ViewCartState.loading());

      try {
        final result = await cartService.getCartItems();

        await result.fold((failure) async {
          emit(const ViewCartState.error(error: false));
        }, (success) async {
          emit(ViewCartState.dataLoaded(cartItems: success));
        });
      } catch (e) {
        emit(const ViewCartState.error(error: false));
      }
    });
  }
}
