part of 'view_cart_price_bloc.dart';

@freezed
class ViewCartPriceEvent with _$ViewCartPriceEvent {
  const factory ViewCartPriceEvent.started() = _Started;
   const factory ViewCartPriceEvent.viewcart() = _Viewcart;
   
}