part of 'view_cart_bloc.dart';

@freezed
class ViewCartEvent with _$ViewCartEvent {
  const factory ViewCartEvent.started() = _Started;
   const factory ViewCartEvent.viewcart() = _Viewcart;
}