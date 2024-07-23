part of 'view_cart_bloc.dart';

@freezed
class ViewCartState with _$ViewCartState {
  const factory ViewCartState.initial() = _Initial;
  const factory ViewCartState.loading() = _Loading;
  const factory ViewCartState.dataLoaded({required List<CartItem> cartItems}) =
      _ViewCart;
  const factory ViewCartState.error({required bool error}) = ViewCartStateError;
}
