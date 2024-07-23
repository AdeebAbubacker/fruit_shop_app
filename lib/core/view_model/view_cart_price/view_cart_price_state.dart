part of 'view_cart_price_bloc.dart';

@freezed
class ViewCartPriceState with _$ViewCartPriceState {
  const factory ViewCartPriceState.initial() = _Initial;
  const factory ViewCartPriceState.loading() = _Loading;
  const factory ViewCartPriceState.dataLoaded({required List<CartItem> cartItems}) =
      _ViewCart;
  const factory ViewCartPriceState.error({required bool error}) = ViewCartPriceStateError;
}
