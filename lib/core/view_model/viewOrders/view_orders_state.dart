part of 'view_orders_bloc.dart';

@freezed
class ViewOrdersState with _$ViewOrdersState {
  const factory ViewOrdersState.initial() = _Initial;
  const factory ViewOrdersState.loading() = _Loading;
  const factory ViewOrdersState.dataLoaded({required List<OrderModel> orderList}) =
      _ViewCart;
  const factory ViewOrdersState.error({required bool error}) = ViewOrdersStateError;
}
