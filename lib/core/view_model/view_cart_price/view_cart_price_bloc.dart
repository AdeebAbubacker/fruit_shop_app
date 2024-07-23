import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fruit_shop_app/core/model/cart_item/cart_item.dart';
import 'package:fruit_shop_app/core/service/cart/cart_service.dart';
part 'view_cart_price_event.dart';
part 'view_cart_price_state.dart';
part 'view_cart_price_bloc.freezed.dart';

class ViewCartPriceBloc extends Bloc<ViewCartPriceEvent, ViewCartPriceState> {
  final CartService cartService;
  ViewCartPriceBloc(this.cartService) : super(_Initial()) {
    on<_Viewcart>((event, emit) async {
      emit(const ViewCartPriceState.loading());

      try {
        final result = await cartService.getCartItems();

        await result.fold((failure) async {
          emit(const ViewCartPriceState.error(error: false));
        }, (success) async {
          emit(ViewCartPriceState.dataLoaded(cartItems: success));
        });
      } catch (e) {
        emit(const ViewCartPriceState.error(error: false));
      }
    });
  }
}
