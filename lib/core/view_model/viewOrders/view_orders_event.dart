part of 'view_orders_bloc.dart';

@freezed
class ViewOrdersEvent with _$ViewOrdersEvent {
  const factory ViewOrdersEvent.started() = _Started;
  const factory ViewOrdersEvent.vieworder() = _Vieworder;
}